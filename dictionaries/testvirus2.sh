# create from Wikipedia List
ami-dictionaries create\
 --hreftext \
	 --input  https://en.wikipedia.org/wiki/List_of_Indian_spices \
	 --informat  wikitable \
	 --namecol `Standard English`\
	 --linkcol `Standard English`\
	 --dictionary spices\
	 --outformats  xml,json,html \
	 --directory testdir/