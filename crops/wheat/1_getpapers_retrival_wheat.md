# Retrieving papers from eupmc using `getpapers`

Putting the query `getpapers -q wheat -n` results in  39095 results. The output for this looks as the following:
```
:~/Desktop/AMI/workshop/wheat$ getpapers -q wheat -n

info: Searching using eupmc API
info: Running in no-execute mode, so nothing will be downloaded
info: Found 39095 open access results
warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api

```

Let's first download 100 papers in xml format in the `./wheat_xml` directory by issuing the query `getpapers -q wheat -x -k 100 --outdir wheat_xml`. It looks following at the terminal:
```
:~/Desktop/AMI/Workshop/wheat$ getpapers -q wheat -x -k 100 --outdir wheat_xml

info: Searching using eupmc API
info: Found 39095 open access results
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
Downloading files [==============================] 100% (100/100) [12.9s elapsed, eta 0.0]
info: All downloads succeeded!


```
**Time** taken for above query: ~13sec  
 

 Let's download the pdf format of the above 100 papers by issuing the command `getpapers -q wheat -p -k 100 --outdir wheat_pdf`.
```
:~/Desktop/AMI/Workshop/wheat$ getpapers -q wheat -p -k 100 --outdir wheat_pdf

info: Searching using eupmc API
info: Found 39095 open access results
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
info: Downloading fulltext PDF files
Downloading files [==============================] 100% (100/100) [82.3s elapsed, eta 0.0]
info: All downloads succeeded!

```
**Time** taken for above query: ~82sec  

