# Wheat Dictionary

## overview
We are creating 3 crop dictionaries for delegates in the workshop. This one is for Wheat (*Triticum spp.*). This is a model for all crop-based dictionaries.

The dictionary is created from the Wikipedia page on Wheat https://en.wikipedia.org/wiki/Wheat and associated links such as https://en.wikipedia.org/wiki/Taxonomy_of_wheat. Every entry in the dictionary should have a link to another Wikipedia page (and hence to a Wikidata page).

## sources

 * https://en.wikipedia.org/wiki/Wheat
 * https://en.wikipedia.org/wiki/Taxonomy_of_wheat
 
## creation from Wikipedia page

`ami-dictionary` was run on the Wikipedia page https://en.wikipedia.org/wiki/Wheat
```
ami-dictionary create\
 --hreftext \
 --input https://en.wikipedia.org/wiki/Wheat\
 --informat wikipage\
 --dictionary wheat \
 --outformats xml
 ```
 
 This creates a dictionary of all Wikipedia links in the page (initial count: xxx ). Vinita has edited these so that only Wheat-relevant links are retained (final count: xxx)

The wheat-page dictionary can be found at:
xxx - give tigr2ess page

## 
