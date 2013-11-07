#!/bin/bash

# Rebuilds all the test files. This is the nuclear option; it will
# break the Git history completely, so avoid it if possible!

for f in `ls *.txt`; do
    confluence2html --stylesheet=bootstrap.css < $f > $f.html
done
