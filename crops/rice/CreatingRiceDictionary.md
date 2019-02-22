# Creating Rice Dictionary

## Purpose of Tutorial

Documentation over creation of dictionary files for rice varietis.

## Resources and software required

ami-dictionary - tool/plugin of ami-jars for creating dictionary file.

Wikipedia page links - 

[`../wiki/Rice`](https://en.wikipedia.org/wiki/Rice)

[`../wiki/Category:Oryza`](https://en.wikipedia.org/wiki/Category:Oryza)

[`../wiki/List_of_rice_varieties`](https://en.wikipedia.org/wiki/List_of_rice_varieties)

[`../wiki/Category:Rice_varieties`](https://en.wikipedia.org/wiki/Category:Rice_varieties)


## Instructions

## step 1


---
ami-dictionary
---
---
### commands for creating Rice Dictionaries. 

```
Command-line syntax:
> ami-dictionary create --input <Wikipedia web link> --informat <input format> --dictionary <dictionary file base name> --outformats <format of output file> --directory <directory name>

```
### Description of operations and options used into the command-line.

```
* ami-dictionary - tool name for the dictionary creation.

* create - operation for creating dictionary.

* --input - option to pass-on the Wikipedia link from which web-links will be fetched and dictionary will be created.

* --informat - option to pass-on option for input format which will be based on content of the Wikipedia page e.g - wikipage, wikilist, wikitable etc.

* --dictionary - option to pass-on the base name of the dictionary file.

* --outformats - option to pass on the output file format for the dictionary files e.g - xml, json or html.

* --directory - option to pass on the name of the directory containing dictionary files.

```
### Running example of ami-dictionary for dictionary creation.

```

> ami-dictionary create --input https://en.wikipedia.org/wiki/Rice --informat wikipage --dictionary rice --outformats xml,json,html --directory Dictionary/

> ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Rice_varieties --informat wikicategory --dictionary  Rice_varieties_category --outformats xml,json,html --directory Dictionary/

> ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Oryza --informat wikicategory --dictionary Oryza_category --outformats xml,json,html --directory Dictionary/

> ami-dictionary create --input https://en.wikipedia.org/wiki/List_of_rice_varieties --informat wikipage --dictionary Oryza_category --outformats xml,json,html --directory Dictionary/

```

### results
* [`Rice.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.xml). 

* [`Rice.json`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.xml).

* [`Rice.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.html).

* [`listriceVarieties.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/listriceVarieties.xml).

* [`oryzaCategory.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/oryzaCategory.xml).

* [`riceVarietiesCategory.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/riceVarietiesCategory.xml).


- JSON fo edited/clipped output <= 8 lines

```
     {
      "identifiers": {
        "contentmine": "CM.9febrice.5"
      },
      "name": "African rice",
      "term": "African rice"
    },
   
    {
      "identifiers": {
        "contentmine": "CM.9febrice.33"
      },
      "name": "Asian rice",
      "term": "Asian rice"
    },
    
 ```
 
 ###### Output is xml,json or html formatted dictionary files as per the specified --outformats option.
 
 ###### Time taken for dictionary creation varies as per the available links into the Wikipedia page.
 
 
 ![screenshots](https://github.com/petermr/tigr2ess/blob/master/crops/rice/assets/ricejson.png).
 

### outputs
* size of output - 5.25 KB.

* location of outputs - 

* [`Rice.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.xml). 

* [`Rice.json`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.json).

* [`Rice.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.html).

* [`listriceVarieties.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/listriceVarieties.xml).

* [`oryzaCategory.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/oryzaCategory.xml).

* [`riceVarietiesCategory.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/riceVarietiesCategory.xml).

