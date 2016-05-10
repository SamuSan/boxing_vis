var $ = require('jQuery');
var action_handler = require('./scripts/action_handler');
var express = require('express');
var path = require('path');
var React = require('react');

var app = express();

action_handler.init($);
// app.use(express.static('public'))

app.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/public/index.html'));
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
