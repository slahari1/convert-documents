# Declare input argument as a variable
INPUTFILE=original_writing.md
OUTPUTNAME=$(echo -n $INPUTFILE | head -c -3)

# Convert markdown to HTML
echo "input file converted to HTML"
pandoc -o $OUTPUTNAME.html $INPUTFILE

# Convert markdown to DOCX
echo "input file converted to DOCX"
pandoc -o $OUTPUTNAME.docx $INPUTFILE 

# Convert markdown to ODT
echo "input file converted to ODT"
pandoc -o $OUTPUTNAME.odt $INPUTFILE 

# Convert markdown to PDF
echo "input file converted to PDF"
pandoc -o $OUTPUTNAME.pdf $INPUTFILE 

# Convert markdown to TXT
echo "input file converted to TXT"
pandoc -o $OUTPUTNAME.txt $INPUTFILE

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted INPUTFILE to HTML, DOCX, ODT, PDF, TXT"