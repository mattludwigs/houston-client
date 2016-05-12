'use strict';

require("./sass/main.scss");

// Require index.html so it gets copied to dist
require('./index.html');
var Elm = require('./Main.elm');

console.log(Elm);

Elm.Main.embed(document.getElementById('main'));
