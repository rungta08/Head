'use strict';

var fs = require('fs');

function printfile(filename) {
    
    var data  = fs.readFileSync(filename + ".txt", 'utf8');
    process.stdout.write(data);
}



exports.printfile = printfile;
