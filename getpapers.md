# getpapers

`getpapers` (written by Rik Smith-Unna, supported by ContentMine with Shuttleworth Funding) is a simple, powerful toolf for querying repositories
of scholarly articles using a simple one-line command.

Full instructions for installation and use are given at [getpapers repository](http://github.com/contentmine/getpapers). Please download and 
install.

## first steps
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
We'll be using the most of the options, especially `-q`, `-x`, `-p`, `-s`, `-a`, `-n`, `k`.
There are over 2 million articles in EPMC; we don't want to download all by mistake so it's worth running a query with `-n` to test, and `-k 200` (say) to download the first trial set. You *can* download thousands, but the connection may break and it's worth being able to develop the analysis anyway.

**NOTE: the exact numbers and content will depend on the version of the data in EPMC**

First steps: "Hello basil!"
```
getpapers -q "Ocimum sanctum" -n
```
gives:
```
getpapers -q "Ocimum sanctum" -n
info: Searching using eupmc API
info: Running in no-execute mode, so nothing will be downloaded
info: Found 509 open access results
warn: This version of getpapers wasn't built with this version of the EuPMC api in mind
warn: getpapers EuPMCVersion: 5.3.2 vs. 6.0.3 reported by api
```
509 papers is an excellent starting point. We need a project directory - say `osanctum`.  Let's download the first 100 as XML:
```
getpapers -q "Ocimum sanctum" -o osanctum -x -k 100
```
That took 4 seconds (depends on connection speed). Here's the log:
```
getpapers -q "Ocimum sanctum" -o osanctum -x -k 100
info: Searching using eupmc API
info: Found 509 open access results
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
Downloading files [==============================] 100% (100/100) [4.7s elapsed, eta 0.0]
info: All downloads succeeded!
```
and your `osanctum` directory should look like:
```
MacBook-Pro-3:osanctum pm286$ ls
PMC1397864			PMC4238170			PMC5376420			PMC5987334
PMC2249741			PMC4286833			PMC5450247			PMC5987647
PMC2803133			PMC4296432			PMC5603166			PMC5991880
PMC2832770			PMC4296439			PMC5620597			PMC6006897
PMC2861815			PMC4297304			PMC5696514			PMC6023537
PMC2959210			PMC4344766			PMC5745208			PMC6024997
PMC2997456			PMC4445982			PMC5747505			PMC6039906
PMC3052594			PMC4461963			PMC5750606			PMC6079351
PMC3059441			PMC4558530			PMC5758638			PMC6093152
PMC3119265			PMC4562040			PMC5771181			PMC6105116
PMC3157116			PMC4569613			PMC5780373			PMC6122250
PMC3178181			PMC4575751			PMC5806308			PMC6150305
PMC3183620			PMC4631451			PMC5824918			PMC6200556
PMC3249909			PMC4708241			PMC5830579			PMC6206834
PMC3330847			PMC4774317			PMC5855364			PMC6215600
PMC3331186			PMC4847459			PMC5860693			PMC6225489
PMC3336497			PMC4889806			PMC5884149			PMC6239295
PMC3385242			PMC4910298			PMC5885087			PMC6261265
PMC3778630			PMC4911752			PMC5891864			PMC6262289
PMC3927567			PMC4930629			PMC5914031			PMC6281068
PMC3979218			PMC4945999			PMC5946529			PMC6289780
PMC4047570			PMC4971952			PMC5960749			PMC6313609
PMC4054046			PMC5061480			PMC5964621			eupmc_fulltext_html_urls.txt
PMC4061585			PMC5234046			PMC5965372			eupmc_results.json
PMC4090833			PMC5289091			PMC5971330

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
Note how every `CTree` has an XML file, conventionally called `fulltext.xml`. XML files contain all the text, but also "markup", so they are easy for machines to understand. `AMI` relies on XML for further processing. However let's also download the PDFs so you can read them.
```
getpapers -q "Ocimum sanctum" -o osanctum -p -k 100
info: Searching using eupmc API
info: Found 509 open access results
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
warn: Article with pmcid "PMC4971952" had no fulltext PDF url
warn: Article with pmcid "PMC4847459" had no fulltext PDF url
... (snipped)
warn: Article with pmcid "PMC4910298" had no fulltext PDF url
info: Downloading fulltext PDF files
Downloading files [==============================] 100% (75/75) [103.6s elapsed, eta 0.0]
info: All downloads succeeded!
```
Note: This took much longer (over 100 s) as PDFs are often several megabytes. However they also contain images so can be useful. However it is not easy for machines to read them - AMI is one of the leaders in the scientific field.




## problems
If you have problems **during the TIGR2ESS workshop program only** please raise a Github issue here. Otherwise raise it on the `getpapers` site.

