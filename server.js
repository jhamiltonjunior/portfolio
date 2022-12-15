const express = require('express')
const path = require('node:path')
const { SitemapStream, streamToPromise } = require('sitemap')
const { createGzip } = require('zlib')
const { Readable } = require('stream')

const port = 8080;

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.resolve('.'));
app.use(express.static(path.resolve(__dirname, '.')))

app.get('/site', (req, res) => {
  res.render('index')
})

let sitemap
app.get('/sitemap.xml', function(req, res) {
  res.header('Content-Type', 'application/xml');
  res.header('Content-Encoding', 'gzip');
  // if we have a cached entry send it
  if (sitemap) {
    res.send(sitemap)
    return
  }

  try {
    const smStream = new SitemapStream({ hostname: `https://${req.headers.host}` })
    const pipeline = smStream.pipe(createGzip())

    // pipe your entries or directly write them.
    smStream.write({ url: '/site',  changefreq: 'daily', priority: 0.3 })
    /* or use
    Readable.from([{url: '/page-1'}...]).pipe(smStream)
    if you are looking to avoid writing your own loop.
    */

    // cache the response
    streamToPromise(pipeline).then(sm => sitemap = sm)
    // make sure to attach a write stream such as streamToPromise before ending
    smStream.end()
    // stream write the response
    pipeline.pipe(res).on('error', (e) => {throw e})
  } catch (e) {
    console.error(e)
    res.status(500).end()
  }
})

app.listen(port);
