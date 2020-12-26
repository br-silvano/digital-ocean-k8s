var express = require('express');
var os = require('os');

var app = express();

app.get('', (req, res) => {
  return res.send(`Olá! Hospedado em ${os.hostname}!`);
});

var port = process.env.PORT || 3333;

app.listen(port, () => {
  console.log(`Rodando na porta ${port}`);
});
