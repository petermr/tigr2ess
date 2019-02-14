ami-dictionary create --input https://en.wikipedia.org/wiki/Rice --informat wikipage --dictionary Rice --outformats xml,json,html
# Operation and options
#  --input - wikipedia page, wikipedia list or wikipedia category page web-link used as input. 
ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Rice_varieties --informat wikicategory --dictionary Rice_varieties_category --outformats xml,json,html

ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Oryza --informat wikicategory --dictionary Oryza_category --outformats xml,json,html

ami-dictionary create --input https://en.wikipedia.org/wiki/List_of_rice_varieties --informat wikipage --dictionary Oryza_category --outformats xml,json,html
