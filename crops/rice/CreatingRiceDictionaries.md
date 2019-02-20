# TUTORIAL_TEMPLATE

This is a template for tutorials (There will normally be one per directory, but there may be more)

## Purpose of Tutorial

1 sentence.

## Resources and software required

1 sentence.

## Instructions

## step 1
### command to issue

precise command that can be cut and pasted.

---
*Action:* Enter `Holy basil` into the window
---
---

  

### Creating Rice Dictionaries 
link to results
* [`Rice.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.xml). 
* [`Rice.json`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.xml).
* [`Rice.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/Rice.html).
* [`listriceVarieties.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/listriceVarieties.xml)
* [`oryzaCategory.xml`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/oryzaCategory.xml)
* [`riceVarietiesCategory`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/riceVarietiesCategory.xml)

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
 ###### Time take for dictionary creation varies as per the available links into the Wikipedia page.
 
 
 * ![screenshots](https://github.com/petermr/tigr2ess/blob/master/crops/rice/ricejson.png).
 

### outputs
* size of output - 5.25 KB.
* location of outputs - 


## step 2
###
```
> ami-dictionary create --input https://en.wikipedia.org/wiki/Rice --informat wikipage --dictionary rice --outformats xml,json,html
> ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Rice_varieties --informat wikicategory --dictionary Rice_varieties_category --outformats xml,json,html
> ami-dictionary create --input https://en.wikipedia.org/wiki/Category:Oryza --informat wikicategory --dictionary Oryza_category --outformats xml,json,html
> ami-dictionary create --input https://en.wikipedia.org/wiki/List_of_rice_varieties --informat wikipage --dictionary Oryza_category --outformats xml,json,html

## step 3
