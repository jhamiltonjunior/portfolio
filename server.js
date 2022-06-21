const express = require('express');
const fs = require('fs')

const host = '127.0.0.1'
const port = 8080;

const app = express();

app.use(express.static(`${__dirname}`))


app.listen(port, host, () => {
  console.log(`Server running at http://${host}:${port}/`);
});
