# Getpapers for Rice

Firstmost required step for ContentMine text data mining (TDM) is to download scientific journals from the specified APIs.

Getpapers command is to download scientific journals into xml, json or pdf format.

### Here is demonstrated getpapers command to download 100 scientific journals based on rice search query:

     ambarish123@ubuntu:~$ getpapers -q rice -x -p -k 100  



### Run time log

    ambarish123@ubuntu:~$ getpapers -q rice -x -p -k 100 -o rice 
    info: Searching using eupmc API
    info: Found 61567 open access results
    warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
    warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
    info: Limiting to 100 hits
    Retrieving results [==============================] 100% (eta 0.0s)
    info: Done collecting results
    info: limiting hits
    info: Saving result metadata
    info: Full EUPMC result metadata written to eupmc_results.json
    info: Individual EUPMC result metadata records written
    info: Extracting fulltext HTML URL list (may not be available for all articles)
    info: Fulltext HTML URL list written to eupmc_fulltext_html_urls.txt
    warn: Article with pmcid "PMC6343584" was not Open Access (therefore no XML)
    warn: Article with pmcid "PMC6327684" was not Open Access (therefore no XML)
    info: Got XML URLs for 98 out of 100 results
    info: Downloading fulltext XML files
    Downloading files [======================] 100% (98/98) [17.8s elapsed, eta 0.0]
    info: All downloads succeeded!
    warn: Article with pmcid "PMC6343584" had no fulltext PDF url
    warn: Article with pmcid "PMC6327684" had no fulltext PDF url
    info: Downloading fulltext PDF files
    Downloading files [======================] 100% (98/98) [93.5s elapsed, eta 0.0]
    info: All downloads succeeded!

### Run time and memory requirements

Total elapsed time in papers download is 93.5 seconds. 
XML formatted files are of lite weight in comparioson to PDF ones. Downloading XML files using  -x command line option
would take fewer time as of downloading PDF's. 

One may increase the downloadable papers count just by adjusting -k command-line option values.

Entire project is structured into CProject.
Occupied memory by the the CProject folder on the disk is about 295 MB. I have downloaded XML as well as PDFs.

### CProject and CTree structure

     ambarish123@ubuntu:~/rice$ tree

       ├── eupmc_fulltext_html_urls.txt
       ├── eupmc_results.json
       ├── PMC6206443
       │   ├── eupmc_result.json
       │   ├── fulltext.pdf
       │   └── fulltext.xml
       ├── PMC6222575
       │   ├── eupmc_result.json
       │   ├── fulltext.pdf
       │   └── fulltext.xml
       ├── PMC6235302
       │   ├── eupmc_result.json
       │   ├── fulltext.pdf
       │   └── fulltext.xml
    100 directories, 298 files

On my ubuntu I visualised the CProject directory contents using tree command.

### discussions

Getpapers command downloads scientific journals into XML, JSON and PDF formats. 
One may set the command-line option to fix the desired format. Here the option for XML 
as well as PDF format are passed-on and the count of papers are set to 100. Advanced search query
may be used to enhance to search performance. These allow search terms and phrases to be combined with
OR, AND and NOT. Search is performed from to mentioned APIs. Here as a default option EPMC is used for the search.
API name has to be passed-on as command-line option. In regard to this get help from getpapers.md file over 
the repository - https://github.com/petermr/tigr2ess/getpapers.md 

For example - 

    getpapers -q "((Oryza sative) OR (Oryza punctata) OR (Oryza) OR (Rice) OR (Indica) )" -n


### issues

Ideally one should go for the search count of 1000 to 2000 papers. But for sake of time consumption
and perform the task within limited time-span, go for 100 papers search.



