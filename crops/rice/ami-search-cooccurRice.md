# ami-search-cooccur for the rice project.
### Compiled by Ambarish (ambari73_sit@jnu.ac.in)
## Here is demonstrated command for ami-search-cooccur using built-in dictionaries.

ambarish123@ubuntu:~$ ami-search-cooccur rice/ country drugs plantparts species gene

built-in dictionaries for country, drugs, plantparts, species and gene (human) are used to get cooccurrance search.

 
Search results find cooccurrances between country, drugs, plantparts, species and gene (human).


## Run time log 

    ambarish123@ubuntu:~$ ami-search-cooccur rice/ country drugs plantparts species genes
                          0    [main] DEBUG org.contentmine.ami.AMIProcessor  - project name: rice/ /home/ambarish123
                          2154 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd:                                 


    2181 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(country)
    2189 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [country]
                option flags: []
    2233 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(drugs)
    2244 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [drugs]
                option flags: []
    2244 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(plantparts)
    2245 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [plantparts]
         option flags: []
    2245 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: species(binomial)
    2245 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: species ...  subOptions: [binomial]
                option flags: []
    2246 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - cmd: search(genes)
    2247 [main] DEBUG org.contentmine.ami.plugins.AMIPluginOption  - OPTION: search ...  subOptions: [genes]
 
         [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running NORMA -i fulltext.xml -o scholarly.html --transform nlm2html --project /home/ambarish123/rice


         C: frequencies...........67400 [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running: search([country])[]
         
         C: country...........95084 [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running: search([drugs])[]

         C: plantparts...........135610 [main] DEBUG org.contentmine.ami.plugins.CommandProcessorC: plantparts...........135610                                                                                                                         [main] DEBUG org.contentmine.ami.plugins.CommandProcessoror  - running: search([plantparts])[]
        
         SP: /home/ambarish123/rice...........filter: species([binomial])[]
        
         C: binomial...........227135 [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running: gene([human])[]

         
         
As prior to running ami plugins or preciously ami-search-cooccur normalisation of downloaded papers are 
required. Norma tool/plugins among AMI tools/plugins are used for normalisation which convert ful
XML formatted papers (files) to scholarly HTML formatted files. These files are stored into respective folders.


## CProject and CTree

              ├── PMC6222575
              │   ├── eupmc_result.json
                  ├── fulltext.pdf
              │   ├── fulltext.xml
                  ├── gene.human.count.xml
              │   ├── gene.human.snippets.xml
              │   ├── results
              │   │   ├── gene
              │   │   │   └── human
              │   │   │       └── results.xml
              │   ├── search
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
                  │           ├── results.html
              │   │           └── results.xml
                  ├── scholarly.html
              │   ├── search.country.count.xml
              │   ├── search.country.snippets.xml
                  ├── search.drugs.count.xml
              │   ├── search.drugs.snippets.xml
              │   ├── search.plantparts.count.xml
              │   ├── search.plantparts.snippets.xml
                  ├── species.binomial.count.xml
              │   ├── species.binomial.snippets.xml
              │   ├── word.frequencies.count.xml
              │   └── word.frequencies.snippets.xml




## Cooccurrance results

## Discussions

## issues

     [main] ERROR org.contentmine.ami.plugins.CommandProcessor  - cannot run command: search([genes])[]; cannot process argument: --sr.search (RuntimeException: cannot read inputStream for dictionary: /org/contentmine/ami/plugins/dictionary/genes.xml)
