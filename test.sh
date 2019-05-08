#print file
# echo "Test Suit to print file content" >> result.txt
#Tests for single file
echo "Result Test case for command head filename" >> result.txt
head file1.txt >> expected.txt
node head.js file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head -n5 filename" >> result.txt
head -n5 file1.txt >> expected.txt
node head.js -n5 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head -n 5 filename" >> result.txt
head -n 5 file1.txt >> expected.txt
node head.js -n 5 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head -c5 filename" >> result.txt
head -c5 file1.txt >> expected.txt
node head.js -c5 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head -c 5 filename" >> result.txt
head -c 5 file1.txt >> expected.txt
node head.js -c 5 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head -5 filename" >> result.txt
head -5 file1.txt >> expected.txt
node head.js -5 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt


#Test for multiple files
echo "Result Test case for command head filename filename ..." >> result.txt
head file2.txt file1.txt >> expected.txt
node head.js file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head filename -n5 filename ..." >> result.txt
head -n5 file2.txt file1.txt >> expected.txt
node head.js -n5 file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head filename -n 5 filename ..." >> result.txt
head -n 5 file2.txt file1.txt >> expected.txt
node head.js -n 5 file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head filename -c5 filename ..." >> result.txt
head -c5 file2.txt file1.txt >> expected.txt
node head.js -c5 file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head filename -c 5 filename ..." >> result.txt
head -c 5 file2.txt file1.txt >> expected.txt
node head.js -c 5 file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt

echo "Result Test case for command head filename -5 filename ..." >> result.txt
head -5 file2.txt file1.txt >> expected.txt
node head.js -5 file2 file1 >> output.txt
diff expected.txt output.txt >> result.txt
echo "Completed" >> result.txt


