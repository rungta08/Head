'use strict';

var fs = require('fs');

function printfilelines(filename, n) {
    
        var data  = fs.readFileSync(filename + ".txt", 'utf8');
        var fdata = data.split('\n');
        for(let i = 0;i < n;i++){
            console.log(fdata[i]);
        }



}

exports.printfilelines = printfilelines;