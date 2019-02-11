# ami-search-cooccur for rice project using local dictionaries.

### Compiled by Ambarish (ambari73_sit@jnu.ac.in)

## Here is demonstrated command to for ami-search-cooccur using local dictionary.

Short description of the dictionary and usage.

Dictionary is created from the wikipedia page of the Rice. Source 
It contains all rice varities, Oryza species, rice diseases and closely associated terminilogies to rice research like monocot or 
glutan.

    ambarish123@ubuntu:~$ ami-search-cooccur rice/ country drugs plantparts species genes /home/ambarish123/rice.xml

Pass on the local dictionary as an command-line option along with the other search terms. Absolute path 
of the dictionary file should be mentioned as in I have stored the rice.xml dictionary to my home directory.
As an command-line option I have passed it as /home/ambarish123/rice.xml
Prefer to use xml formatted dictionary file as of light-weight and ease into handling embedded functionalities of the tool.  

## Run time log
    
     1992 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [country]
           option flags: []
     1993 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(drugs)
     1993 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [drugs]
          option flags: []
     1994 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(plantparts)
     2004 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [plantparts]
          option flags: []
     2004 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: species(binomial)
     2005 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: species ...  subOptions: [binomial]
          option flags: []
     2009 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(genes)
     2012 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [genes]
          option flags: []
     2012 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(/home/ambarish123/rice.xml)
     2013 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [/home/ambarish123/rice.xml]

## CProject and CTree
Visualisation of one folder (content) of the project. 
├── PMC6345924
│   ├── eupmc_result.json
│   ├── fulltext.pdf
│   ├── fulltext.xml
│   ├── gene.human.count.xml
│   ├── gene.human.snippets.xml
│   ├── results
│   │   ├── gene
│   │   │   └── human
│   │   │       └── empty.xml
│   │   ├── search
│   │   │   ├── 9febrice
│   │   │   │   └── results.xml
│   │   │   ├── country
│   │   │   │   └── results.xml
│   │   │   ├── drugs
│   │   │   │   └── empty.xml
│   │   │   └── plantparts
│   │   │       └── results.xml
│   │   ├── species
│   │   │   └── binomial
│   │   │       └── results.xml
│   │   └── word
│   │       └── frequencies
│   │           ├── results.html
│   │           └── results.xml
│   ├── scholarly.html
│   ├── search.country.count.xml
│   ├── search.country.snippets.xml
│   ├── search.drugs.count.xml
│   ├── search.drugs.snippets.xml
│   ├── search.plantparts.count.xml
│   ├── search.plantparts.snippets.xml
│   ├── search.rice.count.xml
│   ├── search.rice.snippets.xml
│   ├── species.binomial.count.xml
│   ├── species.binomial.snippets.xml
│   ├── word.frequencies.count.xml
│   └── word.frequencies.snippets.xml



Here is tree structure for the cooccurance results.

.
├── commonest.dataTables.html
├── cooccurrence
│   ├── binomial
│   │   └── histogram.csv
│   ├── binomial-binomial
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── binomial-gene
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── binomial-genes
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── binomial-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country
│   │   └── histogram.csv
│   ├── country-binomial
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-country
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-drugs
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-gene
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-genes
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-plantparts
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── country-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs
│   │   └── histogram.csv
│   ├── drugs-binomial
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs-drugs
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs-gene
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs-genes
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs-plantparts
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── drugs-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── gene
│   │   └── histogram.csv
│   ├── gene-gene
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── gene.human.count.xml
│   ├── gene.human.snippets.xml
│   ├── genes
│   │   └── histogram.csv
│   ├── genes-genes
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── genes-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── plantparts
│   │   └── histogram.csv
│   ├── plantparts-binomial
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── plantparts-gene
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── plantparts-genes
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── plantparts-plantparts
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── plantparts-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── results
│   │   ├── gene
│   │   │   └── human
│   │   │       └── empty.xml
│   │   ├── search
│   │   │   ├── 9febrice
│   │   │   │   └── empty.xml
│   │   │   ├── country
│   │   │   │   └── empty.xml
│   │   │   ├── drugs
│   │   │   │   └── empty.xml
│   │   │   └── plantparts
│   │   │       └── empty.xml
│   │   ├── species
│   │   │   └── binomial
│   │   │       └── empty.xml
│   │   └── word
│   │       └── frequencies
│   │           └── empty.xml
│   ├── rice
│   │   └── histogram.csv
│   ├── rice-rice
│   │   ├── cooccur.csv
│   │   └── cooccur.svg
│   ├── search.country.count.xml
│   ├── search.country.snippets.xml
│   ├── search.drugs.count.xml
│   ├── search.drugs.snippets.xml
│   ├── search.plantparts.count.xml
│   ├── search.plantparts.snippets.xml
│   ├── search.rice.count.xml
│   ├── search.rice.snippets.xml
│   ├── species.binomial.count.xml
│   ├── species.binomial.snippets.xml
│   ├── word.frequencies.count.xml
│   └── word.frequencies.snippets.xml
├── count.dataTables.html
├── entries.dataTables.html
├── eupmc_fulltext_html_urls.txt
├── eupmc_results.json
├── full.dataTables.html
├── gene.human.count.xml
├── gene.human.documents.xml
├── gene.human.snippets.xml

1346 directories, 2699 files



## Run time and memory requirements
Storage space requirements for the project folder containing papers and all cooccurance results over the disk is around 324 MB.
Total elapsed time for the execution of the ami-search-cooccur is around -- seconds.
## Cooccurance and search results

Here is screenshots of tables containg common-cooccurance results. Cooccurance is found among self and with 
respect to each search term.

## Discussions
Local dictionary gives us customisation into the search results. Along with the built-in dictionaries
it augment addition information from the local dictionaries. Dictionaries can be formed as per the decided 
terms like research institutes, phytochemicals, germs, insecticides, diseases etc.

Source of the dictionary creation may vary like wikipedia page, wikicategory or wikilist.

Manual editing of the dictionary is must to make the search results precious and reduce false positives to the minimal as possible.


## issues
