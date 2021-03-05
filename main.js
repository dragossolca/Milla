"use strict";

var parser = require ('./alf.js').parser;
var fs = require ('fs');

try {
    var data = fs.readFileSync(process.argv[2]).toString();
    parser.parse (data);
}
catch (e) {
    console.log (e.message);
}