# TUTORIAL



## Purpose of Tutorial

This will help you into scientific articles download using getpapers and performing search with the help of ami-search-new tool/plugin of ami-jars. 

## Resources and software required

* getpapers - [Downloads and installation](http://github.com/contentmine/getpapers)
* ami-search-new - [Downloads and installation]()
* dictionary - built-in dictionaries as well as local [rice dictionary](https://github.com/petermr/tigr2ess/tree/master/crops/rice/rice.xml).

## Instructions

## step 1 - getpapers.

By default `getpapers` uses the [EuropePMC](http://www.europepmc.org) API. It's worth testing this online.

If you've installed `getpapers`, make a directory for the results (we'll call it `tigr2ess` here). Then:

```
cd tigr2ess
getpapers

```
This should output a help similar to 

```
 getpapers

  Usage: getpapers [options]

  Options:

    -h, --help                output usage information
    -V, --version             output the version number
    -q, --query <query>       search query (required)
    -o, --outdir <path>       output directory (required - will be created if not found)
    --api <name>              API to search [eupmc, crossref, ieee, arxiv] (default: eupmc)
    -x, --xml                 download fulltext XMLs if available
    -p, --pdf                 download fulltext PDFs if available
    -s, --supp                download supplementary files if available
    -t, --minedterms          download text-mined terms if available
    -l, --loglevel <level>    amount of information to log (silent, verbose, info*, data, warn, error, or debug)
    -a, --all                 search all papers, not just open access
    -n, --noexecute           report how many results match the query, but don't actually download anything
    -f, --logfile <filename>  save log to specified file in output directory as well as printing to terminal
    -k, --limit <int>         limit the number of hits and downloads
    --filter <filter object>  filter by key value pair, passed straight to the crossref api only
    -r, --restart             restart file downloads after failure
```
We'll be using the most of the options, especially `-q`,`-x`,`-k` and `-o`.

* `-q` - option for the search query.
* `-x` - option to download xml file fomatted articles.
* `-k` - option to set the count of downloadable articles.
* `-o` - option to set output directory name.

There are over 2 million articles in EPMC; we don't want to download all by mistake so it's worth running a query with `-n` to test, and pass-on the value of option `- k` as per your interest. Let's say `-k 10` to download the first trial set. You *can* download thousands, but the connection may break and it's worth being able to develop the analysis anyway.

##### At the point of ongoing the workshop and downloading the articles, if you have limited access of internet and have to get the `getpapers` work done, go for the option `-k 10` and `-x`. It will limit the count of articles being downloaded to 10 and articles will be downloaded into light-weight `xml` file format. It will help you out in case of limited internet access, reduced query processing time  and memory storage. 

##### Run following `getpapers` command with specified search query (this would only be for the day of the workshop). This will be a way out in case of limited band-width.  

---
*Action:* Enter `Holy basil` into the window
---
---

```
Command-line syntax:

getpapers -q "rice AND country" -x -k 10 -o <output_dir>

Example:

getpapers -q "rice AND country" -x -k 10 -o rice/

```
Run time log

```
ambarish123@ubuntu:~$ getpapers -q "rice AND country" -x -k 10 -o rice
info: Searching using eupmc API
info: Found 8573 open access results
warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
info: Limiting to 10 hits
Retrieving results [==============================] 100% (eta 0.0s)
info: Done collecting results
info: limiting hits
info: Saving result metadata
info: Full EUPMC result metadata written to eupmc_results.json
info: Individual EUPMC result metadata records written
info: Extracting fulltext HTML URL list (may not be available for all articles)
info: Fulltext HTML URL list written to eupmc_fulltext_html_urls.txt
info: Got XML URLs for 10 out of 10 results
info: Downloading fulltext XML files
Downloading files [=======================] 100% (10/10) [0.0s elapsed, eta 0.0]
info: All downloads succeeded!

```

* Total run time - downloads of 10 scholarly articles into xml format would take only few seconds. 


### what you should see

This will form a CProject directory - rice.

Tree view of the project folder.

```
ambarish123@ubuntu:~/rice$ tree
.
├── eupmc_fulltext_html_urls.txt
├── eupmc_results.json
├── PMC6024620
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6024883
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6031371
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6082532
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6147479
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6210429
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6243107
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6328150
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6348286
│   ├── eupmc_result.json
│   └── fulltext.xml
└── PMC6352273
    ├── eupmc_result.json
    └── fulltext.xml

10 directories, 22 files

```

### outputs

* size of output - 1.5 MB.

* location of [rice CPRoject](https://github.com/petermr/tigr2ess/tree/master/crops/rice/rice)


## step 2

### Perform search and find cooccurrence using tool/plugin - ami-search-new and built-in dictionaries.

```
ambarish123@ubuntu:~$ ami-search-new rice/ country drugs gene

Short description of the command-line options are as follows.

- `ami-search-cooccur` - tool name.

- `rice` - CProject folder name.

- `country`, `drugs`, `gene` - built-in dictionaries and search terms. These have to be placed white-space seperated.

```
Run time log (snippet)

```
running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]...
running: search; search([country])[]...
running: search; search([drugs])[]...
running: gene; gene([human])[]77592 [main] DEBUG org.contentmine.ami.dictionary.gene.HGNCDictionary  - is /org/contentmine/ami/plugins/gene/hgnc/hgnc.xml

```
### link to results

* *time taken if important* - It would take around 03 minutes to find all cooccurrences among specified search terms. Our data set would confined to CProject containing 10 scientific articles.

* Tree view of CProject folder.

```
├── PMC6357162
│   ├── eupmc_result.json
│   ├── fulltext.xml
│   ├── gene.human.count.xml
│   ├── gene.human.snippets.xml
│   ├── results
│   │   ├── gene
│   │   │   └── human
│   │   │       └── results.xml
│   │   ├── search
│   │   │   ├── country
│   │   │   │   └── results.xml
│   │   │   └── drugs
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
│   ├── word.frequencies.count.xml
│   └── word.frequencies.snippets.xml
├── search.country.count.xml
├── search.country.documents.xml
├── search.country.snippets.xml
├── search.drugs.count.xml

```

* Tree view of cooccurrence results and folders.

```
.
├── country
│   └── histogram.csv
├── country-country
│   ├── cooccur.csv
│   └── cooccur.svg
├── country-drugs
│   ├── cooccur.csv
│   └── cooccur.svg
├── country-gene
│   └── cooccur.csv
├── drugs
│   └── histogram.csv
├── drugs-drugs
│   ├── cooccur.csv
│   └── cooccur.svg
├── gene
│   └── histogram.csv
├── gene-drugs
│   └── cooccur.csv
└── gene-gene
    └── cooccur.csv

```

* *screenshots* keep visually small and/link to PNG.

* [`full.DataTables.html`]

![`full.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/full.DataTables.html1.png)

* [`common.DataTables.html`]

![`common.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/commonest.DataTables.html1.png)

* [`entries.DataTables.html`]

![`entries.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/entries.DataTables.html1.png)


### outputs

* size of output - 1.5 MB.

* [location of outputs](https://github.com/petermr/tigr2ess/blob/master/crops/rice/rice.tar.gz) 



## Perform search and find cooccurrence using tool/plugin - ami-search-new and local dictionaries.


### command to issue

```
ambarish123@ubuntu:~$ ami-search-new -p rice/ --dictionary /home/ambarish123/rice.xml

Short description of the command-line options are as follows.

- `ami-search-new` - tool name.

- `rice` - CProject folder name.

- -p - option to pass-on CProject name.

- --dictionary - option to pass-on dictionary file.

```

### link to results

* *time taken if important* - It would take around 02-03 minutes to find all searches and cooccurrences for entries into the local dictionary. 

Run time log (snippet)

```
running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]...
running: search; search([/home/ambarish123/rice.xml])[]1    [main] DEBUG org.contentmine.cproject.files.ResourceLocation  - FILE /home/ambarish123/rice.xml

```

* Tree view of CProject

```
ambarish123@ubuntu:~/rice$ tree

├── PMC6352273
│   ├── eupmc_result.json
│   ├── fulltext.xml
│   ├── results
│   │   ├── search
│   │   │   └── 9febrice
│   │   │       └── results.xml
│   │   └── word
│   │       └── frequencies
│   │           ├── results.html
│   │           └── results.xml
│   ├── scholarly.html
│   ├── search.rice.count.xml
│   ├── search.rice.snippets.xml
│   ├── word.frequencies.count.xml
│   └── word.frequencies.snippets.xml
├── search.rice.count.xml
├── search.rice.documents.xml
├── search.rice.snippets.xml
├── word.frequencies.count.xml
├── word.frequencies.documents.xml
└── word.frequencies.snippets.xml

63 directories, 114 files

```
Tree view of cooccurrence directory.

```
ambarish123@ubuntu:~/rice/__cooccurrence$ tree
.
├── rice
│   └── histogram.csv
└── rice-rice
    └── cooccur.csv

2 directories, 2 files

```

* *screenshots* keep visually small and/link to PNG.

* [`full.DataTables.html`]

![`full.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/full.DataTables.html2.png)

* [`common.DataTables.html`]

![`common.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/commonest.DataTables.html2.png)

* [`entries.DataTables.html`]

![`entries.DataTables.html`](https://github.com/petermr/tigr2ess/blob/master/crops/rice/entries.DataTables.html2.png)


### outputs

* size of output - 3.5 MB.

* [location of outputs](https://github.com/petermr/tigr2ess/blob/master/crops/rice/rice1.tar.gz) 

