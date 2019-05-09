#print file
# echo "Test Suit to print file content" >> result.txt
#Tests for single file
echo "Result Test case for command head filename" >> result.txt
head inputfile1.txt > expected.txt
node head.js inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head -n5 filename" >> result.txt
head -n5 inputfile1.txt > expected.txt
node head.js -n5 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head -n 5 filename" >> result.txt
head -n 5 inputfile1.txt > expected.txt
node head.js -n 5 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head -c5 filename" >> result.txt
head -c5 inputfile1.txt > expected.txt
node head.js -c5 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head -c 5 filename" >> result.txt
head -c 5 inputfile1.txt > expected.txt
node head.js -c 5 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head -5 filename" >> result.txt
head -5 inputfile1.txt > expected.txt
node head.js -5 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi


#Test for multiple files
echo "Result Test case for command head filename filename ..." >> result.txt
head inputfile2.txt inputfile1.txt > expected.txt
node head.js inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head filename -n5 filename ..." >> result.txt
head -n5 inputfile2.txt inputfile1.txt > expected.txt
node head.js -n5 inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head filename -n 5 filename ..." >> result.txt
head -n 5 inputfile2.txt inputfile1.txt > expected.txt
node head.js -n 5 inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head filename -c5 filename ..." >> result.txt
head -c5 inputfile2.txt inputfile1.txt > expected.txt
node head.js -c5 inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head filename -c 5 filename ..." >> result.txt
head -c 5 inputfile2.txt inputfile1.txt > expected.txt
node head.js -c 5 inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi

echo "Result Test case for command head filename -5 filename ..." >> result.txt
head -5 inputfile2.txt inputfile1.txt > expected.txt
node head.js -5 inputfile2 inputfile1 > output.txt
diff expected.txt output.txt >> result.txt
DIFF=$(diff expected.txt output.txt)
if [ "$DIFF" ]
then
    echo "Test Case Failed" >> result.txt
else
    echo "Completed" >> result.txt
fi


