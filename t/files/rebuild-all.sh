#!/bin/bash

# Rebuilds all the test files. This should need to be used less often
# as our formatter becomes more mature.

for f in `ls *.txt`; do
    confluence2html < $f > $f.html
done
