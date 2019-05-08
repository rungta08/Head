'use strict';

var fs = require('fs');

function printfilebytes(filename, n) {
    
        var data  = fs.readFileSync(filename + ".txt", 'utf8');
        var fdata = ""; 
        for (let i = 0;i < n;i++){
            fdata = fdata + data[i];
        }
        process.stdout.write(fdata);

}

exports.printfilebytes = printfilebytes;