#! /bin/sh
#	
	
# create from Wikipedia Category
ami-dictionaries create\
 --hreftext \
	 --input  https://en.wikipedia.org/wiki/Category:Monoterpenes \
	 --informat  wikicategory \
	 --dictionary monoterpenes\
	 --outformats  xml,json,html \
	 --directory testdir/
	
