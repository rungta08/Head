'use strict';

const { printfile } = require("./printfile");
const { printfilelines } = require("./printfilelines");
const { printfilebytes } = require("./printfilebytes");

const reg = new RegExp('^-{1}(n|c|[0-9]+)');

try{
    //with option
    if(process.argv[2].match(reg)){
        //if option is with line
        if(process.argv[2][1] == 'n'){
            if(process.argv[2].length > 2){
                if(process.argv.length == 4){
                    printfilelines(process.argv[3], process.argv[2].split('n')[1]);
                }
                else{
                    for(let i = 3;i < process.argv.length;i++){
                        console.log("==> "+ process.argv[i] +".txt <==")
                        printfilelines(process.argv[i], process.argv[2].split('n')[1]);
                        if(i != process.argv.length-1)
                            process.stdout.write("\n");
                    }
                }
            }
            else{
                if(process.argv.length == 5){
                    printfilelines(process.argv[4], process.argv[3]);
                }
                else{
                    for(let i = 4;i < process.argv.length;i++){
                        console.log("==> "+ process.argv[i] +".txt <==")
                        printfilelines(process.argv[i], process.argv[3]);
                        if(i != process.argv.length-1)
                            process.stdout.write("\n");
                    }
                }
            }
        }
        //if option is with bytes
        else if(process.argv[2][1] == 'c'){
            if(process.argv[2].length > 2){
                if(process.argv.length == 4){
                    printfilebytes(process.argv[3], process.argv[2].split('c')[1]);
                }
                else{
                    for(let i = 3;i < process.argv.length;i++){
                        console.log("==> "+ process.argv[i] +".txt <==")
                        printfilebytes(process.argv[i], process.argv[2].split('c')[1]);
                        if(i != process.argv.length-1)
                            process.stdout.write("\n");
                    }
                }
            }
            else{
                if(process.argv.length == 5){
                    printfilebytes(process.argv[4], process.argv[3]);
                }
                else{
                    for(let i = 4;i < process.argv.length;i++){
                        console.log("==> "+ process.argv[i] +".txt <==")
                        printfilebytes(process.argv[i], process.argv[3]);
                        if(i != process.argv.length-1)
                            process.stdout.write("\n");
                    }
                }
            }
        }
        //if option is default line
        else{
            if(process.argv.length == 4){
                printfilelines(process.argv[3], process.argv[2].split('-')[1]);
            }
            else{
                for(let i = 3;i < process.argv.length;i++){
                    console.log("==> "+ process.argv[i] +".txt <==")
                    printfilelines(process.argv[i], process.argv[2].split('-')[1]);
                    if(i != process.argv.length-1)
                        process.stdout.write("\n");
                }
            }
        }
    }
    //without option
    else{
        //multiple files
        if(process.argv.length > 3){
            for(let i = 2;i < process.argv.length;i++){
                console.log("==> "+ process.argv[i] +".txt <==")
                printfile(process.argv[i]);
                if(i != process.argv.length-1)
                    process.stdout.write("\n");
            }
        }
        //single file
        else{
            printfile(process.argv[2]);
        }
    }
}
catch(err){
    console.log("Something Went Wrong");
}