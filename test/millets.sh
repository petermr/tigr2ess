#! /bin/sh
ami-dictionary create\
 --input https://en.wikipedia.org/wiki/Millet\
 --informat wikipage\
 --dictionary millets_wikipage \
 --outformats xml,html \
 --directory /Users/pm286/workspace/tigr2ess/test/millets/
