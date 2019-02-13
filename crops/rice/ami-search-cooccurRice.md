# ami-search-cooccur for the rice project.
### Compiled by Ambarish (ambari73_sit@jnu.ac.in, er.ambarish@nipgr.ac.in)
## ami-search-cooccur using built-in dictionaries.
```
ambarish123@ubuntu:~$ ami-search-cooccur rice/ country drugs plantparts species gene
```

Short description of the command-line options are as follows.

- `ami-search-cooccur` - tool name.

- `rice` - CProject folder name.

- `country`, `drugs`, `plantparts`, `species`, `gene` - built-in dictionaries and search terms. These have to 
be placed white-space seperated.

built-in dictionaries for `country`, `drugs`, `plantparts`, `species` and `gene (human)` are used to get cooccurrance search.

 
Search results find cooccurrances between `country`, `drugs`, `plantparts`, `species` and `gene (human)`.


## Run time log 
```

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
```
         
         
As prior to running ami plugins or preciously `ami-search-cooccur`, normalisation of downloaded papers are 
required. `Norma` tool/plugins among AMI tools/plugins are used for normalisation which convert 
`XML` formatted papers (files) to `scholarly HTML` formatted files. One may notice into above run time log that normalisation step is
embedded with the the `ami-search-cooccur` tool. Normalised `scholarly.html` arrticles are stored into respective project folder.


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
             │   ├── gene
             │   │   └── histogram.csv
             │   ├── gene-gene
                 │   ├── cooccur.csv
             │   │   └── cooccur.svg
             │   ├── gene.human.count.xml
             │   ├── gene.human.snippets.xml
             │   ├── genes
             │   │   └── histogram.csv
             │   ├── genes-genes
             │   ├── cooccur.csv
             │   │   └── cooccur.svg
             │   ├── plantparts
             │   │   └── histogram.csv
             │   ├── plantparts-binomial
             │   │   ├── cooccur.csv
             │   │   └── cooccur.svg
             │   ├── plantparts-gene
             │   │   ├── cooccur.csv
             │   │   └── cooccur.svg
             ├── plantparts-genes
             │   │   ├── cooccur.csv
             │   │   └── cooccur.svg
             │   ├── plantparts-plantparts
                 │   ├── cooccur.csv
             │   │   └── cooccur.svg
             │   ├── results
             │   │   ├── gene
             │   │   │   └── human
             │   │   │       └── empty.xml
             │   │   ├── search
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
             │   ├── search.country.count.xml
             │   ├── search.country.snippets.xml
             │   ├── search.drugs.count.xml
             │   ├── search.drugs.snippets.xml
                 ├── search.plantparts.count.xml
             │   ├── search.plantparts.snippets.xml
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
                 
 `1238 directories, 2380 files`
 
 ## Screenshots of common results of the cooccurence (html format cooccurence tables).
 
 * ![commonest.data.Tables.html.png](https://github.com/petermr/tigr2ess/blob/master/crops/rice/commonest.data.Tables.html.png)
 * ![count.data.Tables.html.png](https://github.com/petermr/tigr2ess/blob/master/crops/rice/count.data.Tables.html.png)
 * ![entries.data.Tables.html.png](https://github.com/petermr/tigr2ess/blob/master/crops/rice/entries.data.Tables.html.png)

## Run time and storage memory
   
Storage requirements on the disk is `325 MB`. Directory contains downloaded papers and results of cooccurance search.

Elapsed time on `ami-search-cooccure` steps - `10-12 mins`. 


## Discussions
All possible cooccurances among the search terms - `country`, `species`, `drugs`, `plantparts`, `gene` are found
and stored into respective project folder. Apart, common cooccurances among entire project is tabulated and output is generated into `html, svg and csv` format. One may check into the `CProject folder` for the output files and can visualise `html and svg` files into their `internet browser`.

Here is some screenshots of common cooccurances and results.



## issues

*     [main] ERROR org.contentmine.ami.plugins.CommandProcessor  - cannot run command: search([genes])[]; cannot process argument: --sr.search (RuntimeException: cannot read inputStream for dictionary: /org/contentmine/ami/plugins/dictionary/genes.xml)

* If permission to run ami tools/plugins are denied, get into the directory containing all ami-jars and run following command.
```
      > chmod 777 *
```
This issue arises because of simply making copy of the ami-jars. `chmod` is unix based command.  
