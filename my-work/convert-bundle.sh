#!/bin/bash

# fetch the tarbell
wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

# opens the compressed archive
tar -xzvf lab3-bundle.tar.gz        

# removes any empty rows from the data set
cat lab3_data.tsv | tr -s '\n' > lab3r_data.tsv

# converts tab-separated file into comma-separated file format
tr '\t' ',' < lab3r_data.tsv > lab3_data.csv

# counts how many lines of data remain the file
LINE_COUNT=$(tail -n +2 lab3_data.csv | wc -l)

echo "There are $LINE_COUNT lines in the file"
