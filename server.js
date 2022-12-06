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

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
