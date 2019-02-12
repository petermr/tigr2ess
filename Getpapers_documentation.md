# Retrieving papers from eupmc using `getpapers`

 when we type  'getpapers' on terminal we get following informations
 ```
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

Use command `getpapers -q ocimum sanctum -n` results in 512 results. The output for this looks as the following:
```
:~/Desktop/AMI$  getpapers -q 'ocimum sanctum' -n
info: Searching using eupmc API
info: Running in no-execute mode, so nothing will be downloaded
info: Found 512 open access results
warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
```

* -n is no-execute mode so it only shows Open access results

Let's first download 100 papers in xml format in the `AMI` directory by issuing the query `getpapers -q ocimum -x -k 100 --outdir osanctum`. It looks following at the terminal:
```
:~/Desktop/AMI$ getpapers -q ocimum sanctum -x -k 100 --outdir osanctum
info: Searching using eupmc API
info: Found 1667 open access results
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
warn: Article with pmcid "PMC6335655" was not Open Access (therefore no XML)
info: Got XML URLs for 99 out of 100 results
info: Downloading fulltext XML files
Downloading files [==============================] 100% (99/99) [10.6s elapsed, eta 0.0]
info: All downloads succeeded!

```

*Here we only get  xml_full_text files having  HTML url links of eupmc.

** Time taken for above query: ~10.6sec  

Let's download the pdf format of the above 100 papers by giving the command `getpapers -q 'ocimum sanctum' -p -k 100 --outdir osanctum_pdf`

```
:~/Desktop/AMI$ getpapers -q 'ocimum sanctum' -p -k 100 --outdir ocimum
info: Searching using eupmc API
info: Found 1667 open access results
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
warn: Article with pmcid "PMC6335655" had no fulltext PDF url
warn: Article with pmcid "PMC6006897" had no fulltext PDF url
warn: Article with pmcid "PMC5874591" had no fulltext PDF url
warn: Article with pmcid "PMC5620597" had no fulltext PDF url
warn: Article with pmcid "PMC5838907" had no fulltext PDF url
warn: Article with pmcid "PMC5946529" had no fulltext PDF url
warn: Article with pmcid "PMC5070040" had no fulltext PDF url
warn: Article with pmcid "PMC4753755" had no fulltext PDF url
info: Downloading fulltext PDF files
Downloading files [==============================] 100% (92/92) [44.8s elapsed, eta 0.0]
info: All downloads succeeded!
```
** Time taken for above query:~44.8sec

*Above results are all in pdf formats and stored in osanctum_pdf folder 
*Now we have files in Two formats in pdf as well as in xml formats.

