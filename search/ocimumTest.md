# Documentation of test run of ami-search-cooccur over Ocimum sanctum test dataset.
## Introduction
Contentmine is an open-source software suite for text data mining (content mining) especially of scientific journals. It is intended to benefit research based on literature survey in terms of high-throughput and accuracy.Here is documentation and tutorial related contentmine tools - Getpapers, norma and ami.
- Getpapers - It fatches scientific papers (full PDF or XML) along with metadata and supplementary informations. It performs first most step for content mining acquiring scientific papers for reading or bibliometrics.
- Norma - tool for processing the output of getpapers into normalized, tagged, XHTML or scholarly HTML which are further used as input for ami tools/plugins.
- AMI tools/plugins - Mining and analysis is performed by these tools or plugins. It searches and indexes structured documents on a high-throughput basis.

## Installation

Tools are enabled for various computational platforms - Windows, Linux as well as MacOS. Separate installation steps are discussed here.

### Getpapers installation over windows.
- step 1: Installing nvm-windows.
Go to the downloads page - https://github.com/coreybutler/nvm-windows/releases  and download nvm-setup.zip for the latest version. Unzip the downloaded file and run the included installer.

- step 2: Run following commands over windows command-prompt.
> nvm install 7
> nvm use 7

- step 3: Installing a node tool - getpapers.
> npm install --global getpapers

One may check for getpapers installation directory.
For example on my laptop it is installed into following directory.
C:\Users\hadoop_pc\AppData\Roaming\npm

## Getpapapers installation over Linux.

- step 1: Installing nvm  
> crl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
Make sure of curl installation. (sudo apt-get install curl).
or
> wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

- step 2: Installing node
Type following commands on to your terminal.
>nvm install 7
>nvm use 7
>nvm alias default 7

- step 3: installing a node tool.

>npm install --global getpapers

## AMI tool installation over windows.

- srep 1: Make your own installation area (directory containing the package).
> mkdir AMI

- step 2: Get the ami software package into the directory.
Download link - https://github.com/petermr/ami-jars

- step 3: Set environment variable to access the bin directory containing ami plugins/tools.
To set environment variable in Windows - 08.
               - From the desktop, right click the Computer icon.
               - Choose System from the context menu.
               - Click the Advanced system settings link.
               - Click new option into user variables for desktop.
               - Set variable name (environment variable name) and value (absolute path value).


## AMI tools installation over Linux.

- step 1: Make your own installation area (directory containing the package).
> mkdir AMI

- step 2: Get the ami software package (clone ami repository into your area or directory).  
> git clone https://github.com/petermr/ami-jars.git

- step 3: Set environmental variable to access the ami plugins (tools).
Get into either of the directory ../ami-jar/ami20190115/bin/ or ../ami-jar/ami20190115/bin/ folder. All ami tools are contained into it. 
Set the absolute path of the bin directory to environment variable.

> export PATH=$PATH:/absolute path/ami-jar/ami20190115/bin/

check for the set path to bin directory
> echo $PATH

## Check for the installation.
> ami-pdf
If exported or installed correctly. It will list out all tool help information.

## Running steps for getpapers and ami plugins/tools.
- step 1: generate CProject.
> getpapers -q <query_name> -o <project_folder>

<query_name> - query name for the search (generally scientific names. These names are contained as dictionary into software suite.
<project_folder> - name of the project folder (CProject). These contain the downloaded papers into PDF or XML format.

- step 2: Add scholarly.html file to CProject folders.
> norma --project <project_folder> -i fulltext.xml -o scholarly.html --transform nlm2html

- step 3: Run ami plugins/tools.
>ami-search-cooccur --project <project_folder>/ <plugin_options>
<plugin_options> - space separated options for search e.g - country species gene plantparts drugs monoterpene.

## Test run over Ocimum Sanctum dataset.

Here we run six getpapers queries for Ocimum sanctum dataset. It will form a subset of 100 papers. One may increase the number of count of downloaded papers just by changing the -k option of the command-line.

> getpapers -q "Ocimum sanctum" -o osanctum20190121 -x -p -k 100

> getpapers -q "ocimum" -o ocimum20190121 -x -p -k 100

> getpapers -q "sanctum" -o sanctum20190121 -x -p -k 100

> getpapers -q "ocimum AND sanctum" -o ocimumandsanctum20190121 -x -p -k 100

> getpapers -q "ocimum sanctum" -o ocimum_sanctum20190121 -x -p -k 100

> getpapers -q "((Ocimum sanctum) OR (Ocimum tenuiflorum) OR (thulasi) OR (tulasi) OR (tulsi) OR (holy basil))" -o ocimumsanctumadvancedsearch20190121 -x -p -k 100

Snap-shot of getpapers run example.---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


     ambarish123@ubuntu:~$ getpapers -q "ocimum" -o ocimum20190121 -x -p -k 100info: Searching using eupmc API
     info: Found 1652 open access results
     warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
     warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
     written to eupmc_fulltext_html_urls.txt
     info: Got XML URLs for 100 out of 100 results
     info: Downloading fulltext XML filesinfo: Limiting to 100 hits
     Retrieving results [==============================] 100% (eta 0.0s)
     info: Done collecting results
     info: limiting hits
     info: Saving result metadata
     info: Full EUPMC result metadata written to eupmc_results.json
     info: Individual EUPMC result metadata records written
     info: Extracting fulltext HTML URL list (may not be available for all articles)
     info: Fulltext HTML URL list
     Downloading files [==---------------------] 10% (10/100) [0.0s elapsed, eta 0.1]
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Perform normalization of downloaded papers and formation of scholarly HTML files.

- > norma --project osanctum20190121 -i fulltext.xml -o scholarly.html --transform nlm2html
- > norma --project ocimum20190121 -i fulltext.xml -o scholarly.html --transform nlm2html
- > norma --project sanctum20190121 -i fulltext.xml -o scholarly.html --transform nlm2html
- > norma --project ocimumandsanctum20190121 -i fulltext.xml -o scholarly.html --transform nlm2html
- > norma --project ocimum_sanctum20190121 -i fulltext.xml -o scholarly.html --transform nlm2html
- > norma --project ocimumsanctumadvancedsearch20190121 -i fulltext.xml -o scholarly.html --transform nlm2html

Snap-shot of norma run example.-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

     ambarish123@ubuntu:~$ norma --project ocimum20190121/ -i fulltext.xml -o scholarly.html --transform nlm2html
Run time log - 

    PMC4711284 .PMC4753755 PMC4944029 PMC4945999 PMC5061483 PMC5070040 PMC5118752 PMC5234046 PMC5248495 PMC5289084 PMC5343285    .PMC5376420 PMC5429082 PMC5450247 PMC5561165 PMC5562131 PMC5562198 PMC5590053 
    PMC5603166 PMC5620597 PMC5642800 .PMC5696514 PMC5710599 PMC5745208 PMC5750597 PMC5750606 PMC5780373 PMC5806308 PMC581450
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Run ami plugin for search results.

- > ami-search-cooccur osanctum20190121/ country species drugs gene plantparts monoterpene
- > ami-search-cooccur ocimum20190121/ country species drugs gene plantparts monoterpene
- > ami-search-cooccur sanctum20190121/ country species drugs gene plantparts monoterpene
- > ami-search-cooccur ocimum_sanctum20190121/ country species drugs gene plantparts monoterpene 
- > ami-search-cooccur ocimumandsanctum20190121/ country species drugs gene plantparts monoterpene
- > ami-search-cooccur ocimumsanctumadvancedsearch20190121/ country species drugs gene plantparts monoterpene

Snap-shot of ami-search-cooccur run example.----------------------------------------------------------------------------------------------------------------------------------------------------------------

            ambarish123@ubuntu:~$ ami-search-cooccur ocimum20190121/ country gene drugs plantparts species monoterpene
      0    [main] DEBUG org.contentmine.ami.AMIProcessor  - project name: ocimum20190121/ /home/ambarish123
      running: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]
      WS: /home/ambarish123/ocimum20190121  ..........filter: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt   stopwords.txt}]
     ..........summary: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]
    C: frequencies..........running: search([country])[]
    SR: /home/ambarish123/ocimum20190121  
    ..........filter: search([country])[]
    ..........summary: search([country])[]
    C: country..........running: gene([human])[]
    90348 [main] DEBUG org.contentmine.ami.dictionary.gene.HGNCDictionary  - is /org/contentmine/ami/plugins/gene/hgnc/hgnc.xml
    ..........filter: gene([human])[]
    ..........summary: gene([human])[]
     C: human..........running: search([drugs])[]
    SR: /home/ambarish123/ocimum20190121  
    ..........filter: search([drugs])[]
    ..........summary: search([drugs])[]
    C: drugs..........running: search([plantparts])[]
    SR: /home/ambarish123/ocimum20190121  
    ..........filter: search([plantparts])[]
    ..........summary: search([plantparts])[]
    C: plantparts..........running: species([binomial])[]
    SP: /home/ambarish123/ocimum20190121..........filter: species([binomial])[]
    ..........summary: species([binomial])[]
    C: binomial..........running: search([monoterpene])[]
    SR: /home/ambarish123/ocimum20190121  
    ..........filter: search([monoterpene])[]
    ..........summary: search([monoterpene])[]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Results
- Getpapers results - above mentioned command download 100 papers related the search query into JSON, PDF and XML file format.
It forms CProject directory containing all downloads seperately into CTree data structure. Below is the CTree digram.

- Norma results - It performs normalization over XML formated file and convert it to scholarly HTML file format.
These scholarly HTML files are used as input for ami plugins/tools. Also, these scholarly HTML files are browser enabled and can be view
into it.

- ami-search-cooccur results - It performs analysis over input file and searches for desired options as in country, gene, drugs etc.
Alongwith, it finds cooccurance among the search results.

snap-shot of cooccurance results------------------------------------------------------------------------------------------


     ├── commonest.dataTables.html
     ├── cooccurrence
     │   ├── country
     │   │   └── histogram.csv
     │   ├── country-country
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── country-drugs
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── country-gene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── country-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── country-plantparts
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── country-species 
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── drugs
     │   │   └── histogram.csv
     │   ├── drugs-drugs
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── drugs-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── drugs-plantparts
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── drugs-species
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── gene
     │   │   └── histogram.csv
     │   ├── gene-drugs
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── gene-gene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── gene-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── gene-plantparts
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── gene-species
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── monoterpene
     │   │   └── histogram.csv
     │   ├── monoterpene-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── plantparts
     │   │   └── histogram.csv
     │   ├── plantparts-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── plantparts-plantparts
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── plantparts-species
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   ├── species
     │   │   └── histogram.csv
     │   ├── species-monoterpene
     │   │   ├── cooccur.csv
     │   │   └── cooccur.svg
     │   └── species-species
     │       ├── cooccur.csv
     │       └── cooccur.svg
     ├── count.dataTables.html
     ├── entries.dataTables.html
     ├── eupmc_fulltext_html_urls.txt
     ├── eupmc_results.json
     ├── full.dataTables.html
     ├── gene.human.count.xml
     ├── gene.human.documents.xml 
     ├── gene.human.snippets.xml

-------------------------------------------------------------------------------------
snap-shot of CTree of downloaded papers and search results.

     ├── PMC4631451
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
     │   │   │   ├── country
     │   │   │   │   └── results.xml
     │   │   │   ├── drugs
     │   │   │   │   └── results.xml
     │   │   │   ├── monoterpene
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
     │   ├── search.country.snippets.xml
     │   ├── search.drugs.count.xml
     │   ├── search.drugs.snippets.xml
     │   ├── search.monoterpene.count.xml
     │   ├── search.monoterpene.snippets.xml
     │   ├── search.plantparts.count.xml
     │   ├── search.plantparts.snippets.xml
     │   ├── species.binomial.count.xml
     │   ├── species.binomial.snippets.xml
     │   ├── word.frequencies.count.xml
     │   └── word.frequencies.snippets.xml
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Detailed discussion over each output files into CProject.
Cooccurances are contained into a seperate cooccurance folder into CProject. Subdirectories into the cooccurance folder are as follows - 
country, country-gene, country-drugs, country-plantparts, country-monoterpene, country-species and so on for that of each search (gene, drugs, species, monoterpene).
Let's discuss each sub-directory file contents.
histogram.csv is contained into country sub-directory of cooccurance directory. It contains country wise count of scholarly articles or research published about Ocimum sanctum.
each cooccurace sub-directory contains cooccur.csv and cooccur.svg files. This is with cooccurance sub-directory of each search. 
As an overall results CProject directory contains following files.
- commonest.dataTables.html - This is table entry for overall search related the query - Ocimum sanctum. Each row contains information aboutr article and respective search results with  frequency count.
- count.dataTables.html -  This is table entry for overall search related the query - it only contains respective search count for each retrieved articles.
- entries.dataTables.html - This is table entry for overall search related the query - it only contains respective search count for each retrieved articles.This is similar to the previous file - count.dataTables.html but count for each entry is lesser that of previous one.
- eupmc_fulltext_html_urls.txt - Text file for each article web-link or URL. 
- eupmc_results.json - JSON format file containing journal information entry into the database, author information (name, affiliation), abstract etc. Article wise information is contained as json object.  
- full.dataTables.html - This table entry for search results of the query. This is similar to that of previous html files but more informative in terms of count and search results. 
- gene.human.count.xml - XML file for the count of search of human gene into entire query search. Here is 100 papers for Ocimum sanctum. Each tag of XML file correspond to a human gene into the context of the query search. 
- gene.human.documents.xml - 
- gene.human.snippets.xml - XML file for the human gene search into the searched scientific article. XML tag into the file contains all gene related information such as metabolic pathways, biological phenomena, 
coorelated gene information and that of other proteins and related biomolecules discussed and present into the article. File is structured into snippet tree.
- commonest.dataTables.html   
- search.country.snippets.xml - XML file containing country search. Information more of related country search along with institution or department correspondance information related the article present as snippet structure. 
- search.drugs.snippets.xml - XML file containing all experimental or discussed information about the drug into the article. Information is structured as XML snippet tree.
- search.monoterpene.snippets.xml - XML file containing related information of monoterpene - bioactive substance along with their scientic detaila related nomenclature.
- search.plantparts.snippets.xml - XML file containing information of plant parts upon which experiment has been conducted. Information is supplemented with subjected extract condition and biochemical compounds.
- species.binomial.count.xml - XML file containing information of species count covered into species search. That is number of occurences of particular species into entire query search.
Here is 100 papers of Ocimum sanctum.
- species.binomial.documents.xml
  XML file containing information of count of documents or research article specific to a particular species into entire query search. Ex - into 100 papers search there are 68" papers for Ocimum sanctum and "32" papers for Ocimum tenuiflorum.

- species.binomial.snippets.xml - XML file containing information about the species search along with associated drug and medication information.
- word.frequencies.snippets.xml - XML file containing combined information of word frequency of each article into the project.
- word.frequencies.documents.xml - 
- word.frequencies.count.xml
- search.plantparts.documents.xml
- search.plantparts.count.xml
- search.monoterpene.documents.xml
- search.monoterpene.count.xml
- search.drugs.documents.xml
- search.drugs.count.xml
- search.country.documents.xml
- search.country.count.xml
- gene.human.documents.xml
- gene.human.count.xml

These XML files corresponding each search is seperately formed into each subdirectory (project subdirectory of each article). There is result sub-directory into each subdirectory of downloaded articles.
Result sub-directory further contains sub-directory for gene, search, species, word. Gene subdirectory into result one containing xml file for human gene search (placed into human sib-directory).
Search sub-directory contains sub-directory for country, monoterpene, plantparts and drug. Results.xml file containing corresponding search result in formed into these sub-directories.




