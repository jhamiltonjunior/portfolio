const express = require('express')
const path = require('node:path')

const port = 8080;

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.resolve('.'));
app.use(express.static(path.resolve(__dirname, '.')))

app.get('/', (req, res) => {
  res.render('index')
})

app.get("/sitemap.xml", function (req, res) {
  var fs = require("fs");

  try {
    var data = fs.readFileSync("sitemap.xml", "utf8");
    res.send(data);
    // console.log(data.toString());
  } catch (e) {
    console.log("Error:", e.stack);
  }
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
