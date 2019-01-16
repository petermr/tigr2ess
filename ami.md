# AMI

## installing AMI
See [Installation instructions](http://github.com/petermr/normami/blob/master/INSTALL.md)

[AMI](http://github.com/petermr/normami) is the generic name for a program system for querying and analyzing a small-to-medium (up to 10,000) collection of documents, normally 
on local storage. The primary system includes:

## tools
* tools for processing documents into sections and XML
* analyzing components (text, tables, diagrams)
* creating dictionaries
* searching using dictionaries, regexes and other patterns

## dictionaries

In TIGRESS we shall use dictionaries in fields such as:

* species (plants). Also possibly microorganisms and animals
* genes
* plant parts
* diseases (plant, humans)

## first steps

You need to have downloaded a corpus of articles using `getpapers`. Let's assume they are from the `Ocimum sanctum` search 
and are in the directory `osanctum`. We are going to search with a number of dictionaries hardcoded in the `ami` system.
Check that the command `ami-search-cooccur` runs at your commandline.

** NOTE THIS SYNTAX WILL SOON CHANGE **


```
ami-search-cooccur osanctum/ country species gene plantparts drugs monoterpene
```
This runs search and co-occurrence on:
* the project `osanctum`
* with the dictionaries for `species`, `gene`, `plantparts`, `drugs` and `monoterpene`s

The output is something like:
```
0    [main] DEBUG org.contentmine.ami.AMIProcessor  - project name: osanctum/ /Users/pm286/workspace/tigr2ess
270  [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running NORMA -i fulltext.xml -o scholarly.html --transform nlm2html --project /Users/pm286/workspace/tigr2ess/osanctum
PMC1397864 .PMC2249741 PMC2803133 PMC2832770 PMC2861815 PMC2959210 PMC2997456 PMC3052594 PMC3059441 PMC3119265 PMC3157116 .PMC3178181 PMC3183620 PMC3249909 PMC3330847 PMC3331186 PMC3336497 PMC3385242 PMC3778630 PMC3927567 PMC3979218 .PMC4047570 PMC4054046 PMC4061585 PMC4090833 PMC4219006 PMC4238170 PMC4286833 PMC4296432 PMC4296439 PMC4297304 .PMC4344766 PMC4445982 PMC4461963 PMC4558530 PMC4562040 PMC4569613 PMC4575751 PMC4631451 PMC4708241 PMC4774317 .PMC4847459 PMC4889806 PMC4910298 PMC4911752 PMC4930629 PMC4945999 UNKNOWN nlm tag: issn-l
PMC4971952 PMC5061480 PMC5234046 PMC5289091 .PMC5301171 PMC5376420 PMC5450247 PMC5603166 PMC5620597 PMC5696514 PMC5745208 PMC5747505 PMC5750606 PMC5758638 .PMC5771181 PMC5780373 PMC5806308 PMC5824918 PMC5830579 PMC5855364 PMC5860693 PMC5884149 PMC5885087 PMC5891864 .PMC5914031 PMC5946529 PMC5960749 PMC5964621 PMC5965372 PMC5971330 PMC5981179 PMC5987334 PMC5987647 PMC5991880 .PMC6006897 PMC6023537 PMC6024997 PMC6039906 PMC6079351 PMC6093152 PMC6105116 PMC6122250 PMC6150305 PMC6200556 .PMC6206834 PMC6215600 PMC6225489 PMC6239295 PMC6261265 PMC6262289 PMC6281068 PMC6289780 PMC6313609 running: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]
```
we have processed 100 papers automatically...
Now we search (automatically) for words
```
WS: /Users/pm286/workspace/tigr2ess/osanctum  ..........filter: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]
..........summary: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]
C: frequencies..........running: search([country])[]
SR: /Users/pm286/workspace/tigr2ess/osanctum  
```
countries
```
..........filter: search([country])[]
..........summary: search([country])[]
```
species
```
C: country..........running: species([binomial])[]
SP: /Users/pm286/workspace/tigr2ess/osanctum..........filter: species([binomial])[]
..........summary: species([binomial])[]
```
genes
```
C: binomial..........running: gene([human])[]
66161 [main] DEBUG org.contentmine.ami.dictionary.gene.HGNCDictionary  - is /org/contentmine/ami/plugins/gene/hgnc/hgnc.xml
..........filter: gene([human])[]
..........summary: gene([human])[]
```
plant parts
```
C: human..........running: search([plantparts])[]
SR: /Users/pm286/workspace/tigr2ess/osanctum  
..........filter: search([plantparts])[]
..........summary: search([plantparts])[]
``` 
drugs
```
C: plantparts..........running: search([drugs])[]
SR: /Users/pm286/workspace/tigr2ess/osanctum  
..........filter: search([drugs])[]
..........summary: search([drugs])[]
```
monoterpenes
```
C: drugs..........running: search([monoterpenes])[]
SR: /Users/pm286/workspace/tigr2ess/osanctum  
74359 [main] ERROR org.contentmine.ami.plugins.CommandProcessor  - cannot run command: search([monoterpenes])[]; cannot process argument: --sr.search (RuntimeException: cannot read inputStream for dictionary: /org/contentmine/ami/plugins/dictionary/monoterpenes.xml)
[errors snipped]
```


