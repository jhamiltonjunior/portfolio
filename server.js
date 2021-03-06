const express = require('express');
const fs = require('fs')

const port = 8080;

const app = express();

app.use(express.static(`${__dirname}`))

app.get('/blog', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}/`);
});
