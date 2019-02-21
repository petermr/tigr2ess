
# Retrieving/Getting papers from eupmc using `getpapers`

**WARN** Better to use the singular term "millet" which retrives more papers.

Issuing the query `getpapers -q millets -n` results in 335 results. The output for this looks as the following:
```
:~/Desktop/Workshop/Github/tigr2ess/millets$ getpapers -q millets -n
info: Searching using eupmc API
info: Running in no-execute mode, so nothing will be downloaded
info: Found 335 open access results
warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
```


Let's first download 100 papers in xml format in the `./millets_xml` directory by issuing the query `getpapers -q millets -x -k 100 --outdir millets_xml`. It looks following at the terminal:
```
:~/Desktop/Workshop/Github/tigr2ess/millets$ getpapers -q millets -x -k 100 --outdir millets_xml
info: Searching using eupmc API
info: Found 335 open access results
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
info: Got XML URLs for 100 out of 100 results
info: Downloading fulltext XML files
Downloading files [==============================] 100% (100/100) [14.3s elapsed, eta 0.0]
info: All downloads succeeded!

```
**Time** taken for above query: ~15sec  
**Size** of the millets_xml directory: ~15MB  

Now, let's download the pdf format of the above 100 papers by issuing the command `getpapers -q millets -p -k 100 --outdir millets_pdf`.
```
:~/Desktop/Workshop/Github/tigr2ess/millets$ getpapers -q millets -p -k 100 --outdir millets_pdf
info: Searching using eupmc API
info: Found 335 open access results
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
warn: Article with pmcid "PMC5393082" had no fulltext PDF url
warn: Article with pmcid "PMC5501057" had no fulltext PDF url
warn: Article with pmcid "PMC3103924" had no fulltext PDF url
warn: Article with pmcid "PMC5105573" had no fulltext PDF url
warn: Article with pmcid "PMC5116883" had no fulltext PDF url
info: Downloading fulltext PDF files
Downloading files [==============================] 100% (95/95) [48.4s elapsed, eta 0.0]
info: All downloads succeeded!

```
**Time** taken for above query: ~50sec  
**Size** of the millets_pdf directory: ~235MB  








