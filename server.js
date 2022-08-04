const express = require('express')
const path = require('node:path')

const port = 8080;

const app = express();

app.set('view engine', 'ejs');
app.set('views', path.resolve('views'));
app.use(express.static(path.resolve(__dirname, 'static')))

app.get('/', (req, res) => {
  res.render('index')
})

app.get('/create-article', (req, res) => {
  res.render('create-article')
})

app.get('/data', (req, res) => {
  res.json({
		"time": 1659227969240,
		"blocks": [
			{
				"id": "ZXveE5x3G4",
				"type": "header",
				"data": {
					"text": "Editor.js",
					"level": 2
				}
			},
			{
				"id": "WswhrOmqCZ",
				"type": "paragraph",
				"data": {
					"text": "Hey. Meet the new Editor. On this page you can see it in action — try to edit this text."
				}
			},
			{
				"id": "RuVnStD4-H",
				"type": "header",
				"data": {
					"text": "Key features",
					"level": 3
				}
			},
			{
				"id": "LeRpII7kt5",
				"type": "list",
				"data": {
					"style": "unordered",
					"items": [
						"It is a block-styled editor",
						"It returns clean data output in JSON",
						"Designed to be extendable and pluggable with a simple API"
					]
				}
			},
			{
				"id": "hYvBlUR8Jj",
				"type": "header",
				"data": {
					"text": "What does it mean «block-styled editor»",
					"level": 3
				}
			},
			{
				"id": "wVGLKBh0PK",
				"type": "paragraph",
				"data": {
					"text": "Workspace in classic editors is made of a single contenteditable element, used to create different HTML markups. Editor.js <mark class=\"cdx-marker\">workspace consists of separate Blocks: paragraphs, headings, images, lists, quotes, etc</mark>. Each of them is an independent contenteditable element (or more complex structure) provided by Plugin and united by Editor's Core."
				}
			},
			{
				"id": "8fVFYr1XaW",
				"type": "paragraph",
				"data": {
					"text": "There are dozens of <a href=\"https://github.com/editor-js\">ready-to-use Blocks</a> and the <a href=\"https://editorjs.io/creating-a-block-tool\">simple API</a> for creation any Block you need. For example, you can implement Blocks for Tweets, Instagram posts, surveys and polls, CTA-buttons and even games."
				}
			},
			{
				"id": "mMViwTGSa8",
				"type": "header",
				"data": {
					"text": "What does it mean clean data output",
					"level": 3
				}
			},
			{
				"id": "QOYVchHzRT",
				"type": "paragraph",
				"data": {
					"text": "Classic WYSIWYG-editors produce raw HTML-markup with both content data and content appearance. On the contrary, Editor.js outputs JSON object with data of each Block. You can see an example below"
				}
			},
			{
				"id": "CgDTg1mQOm",
				"type": "paragraph",
				"data": {
					"text": "Given data can be used as you want: render with HTML for <code class=\"inline-code\">Web clients</code>, render natively for <code class=\"inline-code\">mobile apps</code>, create markup for <code class=\"inline-code\">Facebook Instant Articles</code> or <code class=\"inline-code\">Google AMP</code>, generate an <code class=\"inline-code\">audio version</code> and so on."
				}
			},
			{
				"id": "7afzlg8YrD",
				"type": "paragraph",
				"data": {
					"text": "Clean data is useful to sanitize, validate and process on the backend."
				}
			},
			{
				"id": "lxnna7wp4H",
				"type": "delimiter",
				"data": {}
			},
			{
				"id": "rcVqC95vjE",
				"type": "paragraph",
				"data": {
					"text": "We have been working on this project more than three years. Several large media projects help us to test and debug the Editor, to make it's core more stable. At the same time we significantly improved the API. Now, it can be used to create any plugin for any task. Hope you enjoy. 😏"
				}
			},
			{
				"id": "EbKIkwn07U",
				"type": "image",
				"data": {
					"file": {
						"url": "https://codex.so/public/app/img/external/codex2x.png"
					},
					"caption": "",
					"withBorder": false,
					"stretched": false,
					"withBackground": false
				}
			}
		],
		"version": "2.24.3"
	},)
})

app.get('/show-article', (req, res) => {
  res.render('show-article')
})

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
