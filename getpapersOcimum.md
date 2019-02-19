# getpapers 

`getpapers` (written by Rik Smith-Unna, supported by ContentMine with Shuttleworth Funding) is a simple, powerful tool for querying repositories of scholarly articles using a simple one-line command.

Full instructions for installation and use are given at [getpapers repository](http://github.com/contentmine/getpapers). Please download and 
install.

This document is specially for the day of the workshop.

## first step
By default `getpapers` uses the [EuropePMC](http://www.europepmc.org) API. It's worth testing this online.

Ambarish Kumar is interested in the plant Ocimum Sanctum ("Holy Basil") and its terpinome so we'll use that - it's a useful size of problem with lots of interest. Try it on the EPMC site as well.

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

There are over 2 million articles in EPMC; we don't want to download all by mistake so it's worth running a query with `-n` to test, and pass-on the value of option `- k` as per your interest. Let's say `-k 10` to download the first trial set. You *can* download thousands, but the connection may break and it's worth being able to develop the analysis anyway.

#### At the point of ongoing the workshop and downloading the articles, if you have limited access of internet and have to get the `getpaper` work done, go for the option `-k 10` and `-x`. It will limit the count of articles being downloaded to 10 and articles will be downloaded into light-weight `xml` fileformat. It will help you out in case of limited internet access, reduced query processing time  and memory storage. 

#### Run following `getpaper` command with specified search query (this would only be for the day of the workshop). This will be a way out in case of limited band-width.  


```
##### Command-line syntax:

getpapers -q "ocimum AND country" -x -k 10 -o <output_dir>

##### Example:

getpapers -q "ocimum AND country" -x -k 10 -o Ocimum/

```
## CProject and CTrees
`osanctum` is a normal directory and it contains 100 normal subdirectories (`PMC*`). ContentMine tools universally use this structure where `ocimum` is the `CProject` (directory) and `PMC*` are the `CTree`s (directories). You can treat these as normal files but if you move them or rename them you might break `AMI` so use our tools. (There are also 2 log files which we shan't us at present).

The `CTree` have the following structure:
```
tree
.
├── PMC1397864
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC2249741
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC2803133
│   ├── eupmc_result.json
│   └── fulltext.xml
... (these dots mean material has been snipped for easier reading)
├── PMC6289780
│   ├── eupmc_result.json
│   └── fulltext.xml
├── PMC6313609
│   ├── eupmc_result.json
│   └── fulltext.xml
```
Note how every `CTree` has an XML file, conventionally called `fulltext.xml`. XML files contain all the text, but also "markup", so they are easy for machines to understand. `AMI` relies on XML for further processing. Note: if you like this simple display, install the `tree` program on `Unix` or `Mac`.

This is sufficient for an initial analysis

You may try for advanced and boolean queries as well as increased number of count of articles and option for pdf download you may refer to the [`getpapers`](https://github.com/petermr/tigr2ess/blob/master/getpapers/getpapers.md) document. 

## problems
If you have problems **during the TIGR2ESS workshop program only** please raise a Github issue here. Otherwise raise it on the `getpapers` site.

