# What is Europe PMC?
*Europe PMC is a repository, providing access to worldwide life sciences articles, books, patents and clinical guidelines. Europe PMC provides links to `relevant records` in databases such as Uniprot, European Nucleotide Archive (ENA), Protein Data Bank Europe (PDBE) and BioStudies.*

By default, the Europe PMC RESTful(one of the `API`of epmc searches)  search results are sorted by relevance, with the most relevant result being presented first in the list.


How do I search Europe PMC?
The main Europe PMC site provides two search functions: a free text search, direct from the main search box, or an advanced search, from the advanced search page which provides you with a number of different parameter options.

You can refine your search by entering search syntax in the search box. The search syntax reference at the bottom of this page includes many examples.

## EPMC query window

* Open [Query window](http://europepmc.org)
* search for "Holy basil". 
---
*Action:* Enter `Holy basil` into the window
---
---

*We always give the query in either single-quotes(') or in double-quotes(") because in quotes it takes as a compelet query otherwise eupmc search it for words only* 
**For example if we type holy basil, then it  search for holy and basil for two different words only not as a query**

*1.When we type "holy basil" into eupmc search we get the result as shown below :271 results shown here*


  ![holy_basil](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/holy_basil.png)
  
  *2.After typing "O.sanctum" we get :295 results as showed below*
  
  
  ![O.sanctum](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/o_scanctum.png)
  
  *3.Using "Ocimum sanctum" as a query we get :976 results below*
  
  
  ![Ocimum_sanctum](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/ocimum_sanctum.png)
  
  *4.If we give only "Ocimum" as a query it searches for only ocimum in articles and gives the:3650 results* 
  
  
  ![ocimum in too general ](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/ocimum_too_general.png)
  
  
  **Using Advanced search we can remove false-positive i.e we can eliminate the False information from search which we Don't want to be in our search.**
  
  *5.Example to remove false-positive,type "tulsi" in your search box of eupmc and get:835 results*
  
  ![tulsi](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/tulsi_fp.png)
  
  **After using Advanced search**
  
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/auth_fp.png)
  
  
  **we get**
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/auth_result_fp.png)
  
  *we can see that using TITLE:"tulsi" Advanced search we get: 56 hits of tulsi*
  
  **Here we get a clear picture of Advanced search that how it eliminate the false-positive ,when we are using "tulsi" we get so many hits because it search tulsi as a name of human-being(tulsi) but after using TITLE:"tulsi" it give only 56 hits ,only regarding scientific query.**
  
  *6.When we want to know that how many Authors are from NIPGR and Cmbridge*
  
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/nipgr_cam_authors.png)
  
  *7.Use Open Access Button to see all Downloadable papers from eupmc.*
  
  
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/oabutton.png)
  
  *8.Search using Different Synonyms,this also an example  of OR operator use in Advanced Search*
  
  
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/synonyms.png)
  
  *9.When we want something only in Body Not in the Title then type:*
  
  
  ![](https://github.com/petermr/tigr2ess/blob/master/epmcSearches/assets/wheat_body.png)
  
  *10.Try following Excercise of wheat:*
  
  ## Queries
1. Wheat papers since 2015:

(PUB_YEAR:"PUB_YEAR:[2015 TO 2019]") AND (TITLE:"Wheat")--> 47974 results
(Title=wheat-->All Bibliographic Field-->year-publication=PUB_YEAR:[2015 TO 2019])

2. Authors from nipgr OR cambridge :

(AUTH_CON:"cambridge" OR AUTH_CON:"nipgr")
(Article Sections) -->(Author contributions)


3. Find wheat but Not in the Title :

(KW:"wheat" NOT TITLE:"wheat") AND (IN_EPMC:y) AND (OPEN_ACCESS:y)--> 357 results


4. wheat in Body only:

(KW:"wheat" NOT TITLE:"wheat" OR ABSTRACT:"wheat") 4923 results 
  
