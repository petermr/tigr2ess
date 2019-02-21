# TUTORIAL



## Purpose of Tutorial
This will help you into scientific articles download using getpapers and performing search with the help of ami-search-new tool/plugin of ami-jars. 
## Resources and software required

* getpapers - [Downloads and installation](http://github.com/contentmine/getpapers)
* ami-search-new - [Downloads and installation]()
* dictionary - built-in dictionaries as well as local [rice dictionary]().

## Instructions

## step 1
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

##### Run following `getpaper` command with specified search query (this would only be for the day of the workshop). This will be a way out in case of limited band-width.  

---
*Action:* Enter `Holy basil` into the window
---
---

```
##### Command-line syntax:

getpapers -q "rice AND country" -x -k 10 -o <output_dir>

##### Example:

getpapers -q "rice AND country" -x -k 10 -o rice/

```
Run time log

* Total run time - 


### what you should see

This will form a CProject directory - rice.

Tree view of the project folder.

```
tree
.
├── PMC1397864
│   ├── fulltext.xml
├── PMC2249741
│   ├── fulltext.xml
├── PMC2803133
│   ├── fulltext.xml
├── PMC6289780
│   ├── fulltext.xml
├── PMC6313609
│   ├── fulltext.xml

```

### outputs
* size of output 
* location of [outputs]()


## step 2
### Perform search and find cooccurrence using tool/plugin - ami-search-new and built-in dictionaries.

```
ambarish123@ubuntu:~$ ami-search-cooccur rice/ country drugs gene

Short description of the command-line options are as follows.

- `ami-search-cooccur` - tool name.

- `rice` - CProject folder name.

- `country`, `drugs`, `gene` - built-in dictionaries and search terms. These have to be placed white-space seperated.

```

### link to results

* *time taken if important* - It would take around 03 minimutes to find all cooccurrences among specified search terms. Our data set would confined to CProject containing 10 scientific articles.

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
> ambarish123@ubuntu:~$ ami-search-new -p rice/ --dictionary /home/ambarish123/rice.xml

Short description of the command-line options are as follows.

- `ami-search-new` - tool name.

- `rice` - CProject folder name.

- -p - option to pass-on CProject name.

- --dictionary - option to pass-on dictionary file.

```

### link to results

* *time taken if important* - It would take around 02-03 minutes to find all searches and cooccurrences for entries into the local dictionary. 

```

```
* Tree view of cooccurrence results and folders.

```

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

