# Europe PMC search

This describes how to use EuropePMC (http://europepmc.org) as a web-based search engine.
### *overview*
*EuropePMC has other features than search (e.g. author manuscript upload) and there is a lot of emphasis on authors, grants, etc. The full documentation is in http://europepmc.org/Help but this is long. Later we suggest aome of the more important sections:*

## basic search

The basic search (at URL above) takes free text:
```
wheat
```
and (on 20190206) gives:
```
Results
1 - 25 of 159993 results  RSS Sort by: Relevance | Date  | Times Cited 1 2 3 4 5 ...  Next 
Select results 1 - 25 
From markers to genome-based breeding in wheat.
Rasheed A ,  Xia X  
Theor Appl Genet [23 Jan 2019]
parallel to projected wheat production demands. These advances have intrigued wheat researchers to practice ... ensuring sustainable wheat production through developing high yielding, climate-resilient wheat cultivars with
Cited: 0 times (PMID:30673804)
```
(*suggest replace by screen shot)*

## boolean queries
These provide a range of logical operators (AND, NOT, OR) - these are CASE-SENSITIVE. AND is the default, so
`wheat gluten` is the same as `wheat AND gluten`. Compound words/phrases must be quoted (e.g. "wheat flour"). Try this  out (numbers of hits will change daily):

### single words
No boolean operators
```
wheat
```
gives 159993 hits

### AND

```
wheat AND gluten
```
or
```
wheat gluten
```
gives 8911 hits

![EPMC boolean](https://github.com/petermr/tigr2ess/blob/master/epmc_wheat_query.png )

### OR
```
wheat OR gluten
```
gives 175163

### NOT
```
wheat NOT gluten
```
gives 151082 hits.
```
gluten NOT wheat
```
gives 15170 hits.

### XOR, NOR, NAND do not exist
Do NOT try to use these (I think they crash the system). If you need these operators you have to code them explicitly:
"Wheat or rice but not both" could be written as 
```
(wheat NOT rice) OR (rice NOT wheat)
```
gives 314757 hits as does:
```
(wheat OR rice) NOT (rice AND wheat)
```




### compound nouns
To search for "wheat gluten" (i.e. gluten from wheat) thw phrases must be quoted (this prevents the AND being implied).
```
"wheat gluten"
```
gives 2846 hits.
Note that this is order-specific - "gluten wheat" (i.e. wheats qualified by gluten) are fewer:
```
"gluten wheat"
```
gives 266 hits. 
Note also that false positives for compound nouns may occur:
```
Development of decreased-gluten wheat 
```
There is no easy way round this.

## advanced search
These are some of the tools, sections, annotations and concepts that will be useful for subject-based searches.
*NOTE: the advanced search for terms is not intuitive. Make sure you are competent before you try this. Also not that most of the functionality could be created manually. The advantage of the Query Builder is that brackets and quotes are likely to be correct. But I haven't managed to get some of the functionality to work*
### synonyms
I haven't got http://europepmc.org/Help#usesynonyms to work.

## Syntax
See: http://europepmc.org/Help#SSR.
There are a wide range of fields which will help narrow searches, and we'll select the most important.

1. Direct search (copied with thanks)
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="width:180px">Search syntax</th>
<th>Result</th>
</tr>
<tr>
<td>J.Inorg. Biochem. 101:74-79(2007)</td>
<td>Quick search in common notation style, with journal + volume + pageInfo + pub year</td>
</tr>
<tr>
<td>microtubule glycosylated</td>
<td>Finds citations containing microtubule AND glycosylated (default behaviour)</td>
</tr>
<tr>
<td>microtubule OR glycosylated</td>
<td>Finds citations containing microtubule OR glycosylated. Note that "OR" is case sensitive.</td>
</tr>
<tr>
<td>(fish OR bird) AND disease</td>
<td>Finds citations containing either fish OR bird AND on top of that disease.</td>
</tr>
<tr>
<td>microtub* disease</td>
<td>Finds citations containing disease AND terms that start with microtub. Wildcard usage is limited and not allowed when resulting in too many clauses.</td>
</tr>
<tr>
<td>microtubule cardiac -toxicity</td>
<td>Finds citations containing microtubule AND cardiac but NOT toxicity</td>
</tr>
<tr>
<td>With quotes: "green grass"</td>
<td>"green grass" with quotes) results in a search for green grass as a sequence of two words. Bear in mind that when you use 'stop words' (such as 'a','and','in','if' etcetera) within a quoted phrase search then this may give less accurate results due to the nature of the indexing mechanism.</td>
</tr>
<tr>
<td>Without quotes: green grass</td>
<td>Using no quotes is always less strict, and will give back all citations where the words green and grass occur, not necessarily sequentially.</td>
</tr>
</tbody>
</table>

<h4 id="corebibliographic">2.1 Core bibliographic</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>TITLE:</td>
<td>Search for a term or terms in publication titles</td>
<td><a href="/search/?page=1&amp;query=title:aspirin">TITLE:aspirin</a>, <a href="/search/?page=1&amp;query=title:%22protein+knowledgebase%22">TITLE:"protein knowledgebase"</a></td>
</tr>
<tr>
<td>ABSTRACT:</td>
<td>Search for a term or terms in publication abstracts</td>
<td><a href="/search/?page=1&amp;query=ABSTRACT:malaria">ABSTRACT:malaria</a>, <a href="/search/?page=1&amp;query=ABSTRACT:%22chicken%20pox%22">ABSTRACT:"chicken pox"</a></td>
</tr>
<tr>
<td>PUB_YEAR:</td>
<td>Search by year of publication in YYYY format; note syntax for range searching.</td>
<td><a href="/search/?page=1&amp;query=PUB_YEAR:2000">PUB_YEAR:2000</a>, <a href="/search/?page=1&amp;query=PUB_YEAR:%5B2000+TO+2001%5D">PUB_YEAR:[2000 TO 2001]</a></td>
</tr>
<tr>
<td>E_PDATE:</td>
<td>Electronic publication date, when an article was first published online.</td>
<td><a href="/search?query=E_PDATE%3A2013-12-15">E_PDATE:2013-12-15</a>, <a href="/search?query=E_PDATE%3A20070930">E_PDATE:20070930</a>, <a href="/search?query=E_PDATE%3A%5B2000-12-18%20TO%202014-12-30%5D">E_PDATE:[2000-12-18 TO 2014-12-30]</a>, <a href="/search?query=E_PDATE%3A%5B20040101%20TO%2020140101%5D">E_PDATE:[20040101 TO 20140101]</a></td>
</tr>
<tr>
<td>FIRST_PDATE:</td>
<td>The date of first publication, whichever is first, electronic or print publication. Where a date is not fully available e.g. year only, an algorithm is applied to determine the value.</td>
<td><a href="/search?query=FIRST_PDATE%3A1995-02-01">FIRST_PDATE:1995-02-01</a>, <a href="/search?query=FIRST_PDATE%3A20000101">FIRST_PDATE:20000101</a>, <a href="search?query=FIRST_PDATE%3A%5B2000-10-14%20TO%202010-11-15%5D">FIRST_PDATE:[2000-10-14 TO 2010-11-15]</a>, <a href="/search?query=FIRST_PDATE%3A%5B20040101%20TO%2020140101%5D">FIRST_PDATE:[20040101 TO 20140101]</a></td>
</tr>
<tr>
<td>P_PDATE:</td>
<td>Print publication date of journal issue, when an article appeared in print format.</td>
<td><a href="/search?query=P_PDATE%3A1982-10-01">P_PDATE:1982-10-01</a>, <a href="/search?query=P_PDATE%3A20140101">P_PDATE:20140101</a>, <a href="/search?query=P_PDATE%3A%5B2000-12-18%20TO%202014-12-30%5D">P_PDATE:[2000-12-18 TO 2014-12-30]</a>, <a href="/search?query=P_PDATE%3A%5B20031114%20TO%2020141115%5D">P_PDATE:[20031114 TO 20141115]</a></td>
</tr>
<tr>
<td>AUTH:</td>
<td>Search for a surname and (optionally) initial(s) in publication author lists</td>
<td><a href="/search/?page=1&amp;query=AUTH:einstein">AUTH:einstein</a>, <a href="/search/?page=1&amp;query=AUTH:%22einstein+G%22">AUTH:"einstein G"</a></td>
</tr>
<tr>
<td>AFF:</td>
<td>Search for a term or terms in the author affiliation field</td>
<td><a href="/search/?page=1&amp;query=AFF:ebi">AFF:ebi</a>, <a href="/search/?page=1&amp;query=AFF:%22university+of+cambridge%22">AFF:"university of cambridge"</a></td>
</tr>
<tr>
<td>JOURNAL:</td>
<td>Journal title &#8211; searchable either in full or abbreviated form</td>
<td><a href="/search/?page=1&amp;query=JOURNAL:%22biology+letters%22">JOURNAL:"biology letters"</a>, <a href="/search/?page=1&amp;query=JOURNAL:%22biol+lett%22">JOURNAL:"biol lett"</a></td>
</tr>
<tr>
<td>ISSN:</td>
<td>Search for a journal by its ISSN; see the NCBI&#8217;s list of journals and ISSNs in PubMed</td>
<td><a href="/search/?page=1&amp;query=ISSN:0028-0836">ISSN:0028-0836</a></td>
</tr>
</tbody>
</table>
</div>

<h4 id="articlemetadata">2.2 Article metadata</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>DISEASE:</td>
<td>Search for mined diseases</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=DISEASE:dysthymias">DISEASE:dysthymias</a></td>
</tr>
<tr>
<td>GENE_PROTEIN:</td>
<td>Search for records that have GENE_PROTEINS mined</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=GENE_PROTEIN:gng11">GENE_PROTEIN:gng11</a></td>
</tr>
<tr>
<td>GOTERM:</td>
<td>Search for records that have GOTERM mined</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=GOTERM:apoptosis">GOTERM:apoptosis</a></td>
</tr>
<tr>
<td>IS_SCANNED:</td>
<td>Search for scanned/OCR content</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=IS_SCANNED:y">IS_SCANNED:y</a></td>
</tr>
<tr>
<td>LANG:</td>
<td>Limit your search to publications written in language X; see the Advanced Search page for a full list of languages</td>
<td><a href="/search/?page=1&amp;query=LANG:fre">LANG:fre</a>, <a href="/search/?page=1&amp;query=LANG:eng">LANG:eng</a></td>
</tr>
<tr>
<td>GRANT_AGENCY:</td>
<td>Limit your search by the funding agency which supported the research; see the Advanced Search page for a full list of grant agencies</td>
<td><a href="/search/?page=1&amp;query=GRANT_AGENCY:%22Wellcome%20Trust%22">GRANT_AGENCY:"wellcome trust"</a>, <a href="/search/?page=1&amp;query=GRANT_AGENCY:%22medical+research+council%22">GRANT_AGENCY:"medical research council"</a></td>
</tr>
<tr>
<td>GRANT_ID:</td>
<td>Limit your search by ID of the grant which funded the research</td>
<td><a href="/search/?page=1&amp;query=GRANT_ID:100229">GRANT_ID:100229</a>, <a href="/search/?page=1&amp;query=GRANT_ID:71672">GRANT_ID:71672</a></td>
</tr>
<tr>
<td>KW:</td>
<td>Limit your search by keyword, including MeSH and other publisher-supplied terms</td>
<td><a href="/search/?page=1&amp;query=KW:galactosylceramides">KW:galactosylceramides</a>, <a href="/search/?page=1&amp;query=KW:%22recombinant+proteins%22">KW:"recombinant proteins"</a></td>
</tr>
<tr>
<td>CHEM:</td>
<td>Limit your search by MeSH substance</td>
<td><a href="/search/?page=1&amp;query=CHEM:propantheline">CHEM:propantheline</a>, <a href="/search/?page=1&amp;query=CHEM:%22protein+kinases%22">CHEM:"protein kinases"</a></td>
</tr>
<tr>
<td>HAS_ABSTRACT:</td>
<td>Limit search results according to presence or absence of abstract</td>
<td><a href="/search/?page=1&amp;query=HAS_ABSTRACT:y">HAS_ABSTRACT:y</a>, <a href="/search/?page=1&amp;query=HAS_ABSTRACT:n">HAS_ABSTRACT:n</a></td>
</tr>
<tr>
<td>ORGANISM:</td>
<td>Search for mined organisms</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=ORGANISM:terebratulide">ORGANISM:terebratulide</a></td>
</tr>
<tr>
<td>PUB_TYPE:</td>
<td>Limit your search by publication type; see the Advanced Search page for a full list of publication types</td>
<td><a href="/search/?page=1&amp;query=PUB_TYPE:review">PUB_TYPE:review</a>, <a href="/search/?page=1&amp;query=PUB_TYPE:%22retraction+of+publication%22">PUB_TYPE:"retraction of publication"</a></td>
</tr>
</tbody>
</table>
</div>

<h4 id="fulltextavailability">2.3 Full text availability</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>BODY:</td>
<td>Search for terms within the body of a fulltext article</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=BODY:PCR">BODY:PCR</a></td>
</tr>
<tr>
<td>DOI:</td>
<td>Search for publication by Digital Object Identifier (DOI)</td>
<td><a href="/search/?page=1&amp;query=DOI:10.1007/bf00197367">DOI:10.1007/bf00197367</a></td>
</tr>
<tr>
<td>HAS_DOI:</td>
<td>Limit search results to those publications which do or do not have a DOI</td>
<td><a href="/search/?page=1&amp;query=HAS_DOI:y">HAS_DOI:y</a>, <a href="/search/?page=1&amp;query=HAS_DOI:n">HAS_DOI:n</a></td>
</tr>
<tr>
<td>IN_PMC:</td>
<td>Limit search results according to availability (or not) of fulltext article in PubMed Central</td>
<td><a href="/search/?page=1&amp;query=IN_PMC:y">IN_PMC:y</a></td>
</tr>
<tr>
<td>HAS_FT:</td>
<td>Limit search results according to availability (or not) of fulltext article or book in Europe PMC</td>
<td><a href="/search/?page=1&amp;query=HAS_FT:y">HAS_FT:y</a></td>
</tr>
<tr>
<td>IN_EPMC:</td>
<td>Limit search results according to availability (or not) of fulltext article in Europe PMC</td>
<td><a href="/search/?page=1&amp;query=IN_EPMC:y">IN_EPMC:y</a></td>
</tr>
<tr>
<td>HAS_PDF:</td>
<td>Limit search results according to availability (or not) of a PDF version of the fulltext article</td>
<td><a href="/search/?page=1&amp;query=HAS_PDF:y">HAS_PDF:y</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="collectionmetadata">2.4 Collection metadata</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>SRC:</td>
<td>Search for articles from a particular repository; the available data sources are listed are listed in the 'code' column of the table under the question: <a href="/Help#whatserachingEPMC">What am I searching on Europe PMC?</a></td>
<td><a href="/search/?page=1&amp;query=SRC:ctx">SRC:ctx</a>, <a href="/search/?page=1&amp;query=SRC:hir">SRC:hir</a>, <a href="/search?query=SRC%3Appr">SRC:ppr</a></td>
</tr>
<tr>
<td>HAS_XREFS:</td>
<td>Limit search results to articles with cross-references to other databases; the available databases are listed in the Web Services Reference Guide</td>
<td><a href="/search/?page=1&amp;query=HAS_XREFS:y">HAS_XREFS:y</a></td>
</tr>
<tr>
<td>HAS_PREPRINT:</td>
<td>Limit search results to peer reviewed articles which were preceded by a preprint version of the article</td>
<td><a href="/search/?page=1&query=HAS_PREPRINT:y">HAS_PREPRINT:y</a></td>
</tr>
<tr>
<td>HAS_PUBLISHED_VERSION:</td>
<td>Limit search results to preprints which were later peer reviewed, edited, typeset and published as articles</td>
<td><a href="/search/?page=1&query=HAS_PUBLISHED_VERSION:y">HAS_PUBLISHED_VERSION:y</a></td>
</tr>
<tr>
<td>HAS_CRD:</td>
<td>Limit search results according to presence or absence of links to related content. CRD is a database that provides comments about an article.</td>
<td><a href="/search/?page=1&amp;query=HAS_CRD:y">HAS_CRD:y</a></td>
</tr>
<tr>
<td>HAS_TM:</td>
<td>Limit search results to text-mined fulltext articles only (or not)</td>
<td><a href="/search/?page=1&amp;query=HAS_TM:y">HAS_TM:y</a></td>
</tr>
<tr>
<td>HAS_REFLIST:</td>
<td>Limit search results to only those publications with a reference list (or not)</td>
<td><a href="/search/?page=1&amp;query=HAS_REFLIST:y">HAS_REFLIST:y</a></td>
</tr>
<tr>
<td>CREATION_DATE:</td>
<td>Search for publications by date of entry into the Europe PMC database, in YYYY-MM-DD format; note syntax for searching date range</td>
<td><a href="/search/?page=1&amp;query=CREATION_DATE:2010-11-11">CREATION_DATE:2010-11-11</a>, <a href="/search/?page=1&amp;query=CREATION_DATE:%5B2010-11-11+TO+2010-12-11%5D">CREATION_DATE:[2010-11-11 TO 2010-12-11]</a></td>
</tr>
<tr>
<td>UPDATE_DATE:</td>
<td>Search for publications by date of update in the Europe PMC database; note syntax for searching date range</td>
<td><a href="/search/?page=1&amp;query=UPDATE_DATE:2011-11-11">UPDATE_DATE:2011-11-11</a>, <a href="/search/?page=1&amp;query=UPDATE_DATE:%5B2011-11-11+TO+2011-12-11%5D">UPDATE_DATE:[2011-11-11 TO 2011-12-11]</a></td>
</tr>
<tr>
<td>OPEN_ACCESS:</td>
<td>Limit search results to articles that are Open Access</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=OPEN_ACCESS:y">OPEN_ACCESS:y</a></td>
</tr>
<tr>
<td>HAS_LABSLINKS:</td>
<td>Lists articles that have links provided by 3rd parties (using the <a href="/LabsLink">Europe PMC external links service</a>)</td>
<td><a href="/search/?page=1&amp;query=HAS_LABSLINKS:y">HAS_LABSLINKS:y</a></td>
</tr>
<tr>
<td>HAS_SUPPL:</td>
<td>List articles that have supplemental data associated with them e.g. spreadsheets, video files, etc.</td>
<td><a href="/search/?page=1&amp;query=HAS_SUPPL:y">HAS_SUPPL:y</a></td>
</tr>
<tr>
<td>LABS_PUBS:</td>
<td>List articles that have external links by provider ID</td>
<td><a href="/search?page=1&amp;query=LABS_PUBS:1001&amp;sortby=Relevance">LABS_PUBS:1001</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="contentsetfilter">2.5 Content type filter</h4>
<div class="table-overflow">
<table style="width:100%">
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>SB:</td>
<td>Limit search results to EuroFIR subsets</td>
<td><a href="/search/?page=1&amp;query=SB:eurofir">SB:eurofir</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="books">2.6 Books</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>ISBN:</td>
<td>Search for book by ISBN where indexed</td>
<td><a href="/search/?page=1&amp;query=ISBN:9780815340720">ISBN:9780815340720</a></td>
</tr>
<tr>
<td>ED:</td>
<td>Search for book by editor</td>
<td><a href="/search/?page=1&amp;query=ED%3Ajensen%20HAS_BOOK%3Ay">ED:jensen HAS_BOOK:y</a></td>
</tr>
<tr>
<td>PUBLISHER:</td>
<td>Search for book by publisher</td>
<td><a href="/search/?page=1&amp;query=PUBLISHER:%22OUP%20Oxford%22%20HAS_BOOK:y">PUBLISHER:"OUP Oxford" HAS_BOOK:y</a></td>
</tr>
<tr>
<td>HAS_BOOK:</td>
<td>List the full text books on the Europe PMC Bookshelf</td>
<td><a href="/search/?page=1&amp;query=HAS_BOOK:y">HAS_BOOK:y</a></td>
</tr>
<tr>
<td>BOOK_ID:</td>
<td>Find a full text book on the Europe PMC Bookshelf by specifying its 'NBK' number</td>
<td><a href="/search/?page=1&amp;query=BOOK_ID:NBK27326">BOOK_ID:NBK27326</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="databasecrossreferences">2.7 Database cross references</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>ARXPR_PUBS:</td>
<td>Show publications with links to given ArrayExpress ID</td>
<td><a href="/search?page=1&amp;query=ARXPR_PUBS:E-GEOD-22481">ARXPR_PUBS:E-GEOD-22481</a></td>
</tr>
<tr>
<td>UNIPROT_PUBS:</td>
<td>Show publications with links to given UniProt ID</td>
<td><a href="/search/?page=1&amp;query=UNIPROT_PUBS:q1rfz4">UNIPROT_PUBS:q1rfz4</a></td>
</tr>
<tr>
<td>EMBL_PUBS:</td>
<td>Show publications with links to given EMBL ID</td>
<td><a href="/search/?page=1&amp;query=EMBL_PUBS:KJ634683">EMBL_PUBS:KJ634683</a></td>
</tr>
<tr>
<td>PDB_PUBS:</td>
<td>Show publications with links to given PDBe ID</td>
<td><a href="/search/?page=1&amp;query=PDB_PUBS:2w3z">PDB_PUBS:2w3z</a></td>
</tr>
<tr>
<td>INTACT_PUBS:</td>
<td>Show publications with links to given IntAct ID</td>
<td><a href="/search/?page=1&amp;query=INTACT_PUBS:ebi-493556">INTACT_PUBS:ebi-493556</a></td>
</tr>
<tr>
<td>INTERPRO_PUBS:</td>
<td>Show publications with links to given InterPro ID</td>
<td><a href="/search/?page=1&amp;query=INTERPRO_PUBS:ipr013998">INTERPRO_PUBS:ipr013998</a></td>
</tr>
<tr>
<td>CHEBITERM:</td>
<td>Search for mined chemical names</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=CHEBITERM:dihydrocapsaicin">CHEBITERM:dihydrocapsaicin</a></td>
</tr>
<tr>
<td>CHEBI_PUBS:</td>
<td>Show publications with links to given ChEBI ID</td>
<td><a href="/search/?page=1&amp;query=CHEBI_PUBS:chebi:62806">CHEBI_PUBS:chebi:62806</a></td>
</tr>
<tr>
<td>CRD_LINKS:</td>
<td>Show publications with links to given related content ID</td>
<td><a href="/search/?page=1&amp;query=CRD_LINKS:22001008219">CRD_LINKS:22001008219</a></td>
</tr>
<tr>
<td>HAS_ARXPR:</td>
<td>Limit search results to publications which are (or are not) cited by the ArrayExpress catalog and link to the relevant ArrayExpress record</td>
<td><a href="/search?page=1&amp;query=HAS_ARXPR:y">HAS_ARXPR:y</a></td>
</tr>
<tr>
<td>HAS_UNIPROT:</td>
<td>Limit search results to publications which are (or are not) cited by the UniProt catalog and link to the relevant UniProt record</td>
<td><a href="/search/?page=1&amp;query=HAS_UNIPROT:y">HAS_UNIPROT:y</a></td>
</tr>
<tr>
<td>HAS_EMBL:</td>
<td>Limit search results to publications which are (or are not) cited by the EMBL database and link to the relevant EMBL record</td>
<td><a href="/search/?page=1&amp;query=HAS_EMBL:y">HAS_EMBL:y</a></td>
</tr>
<tr>
<td>HAS_PDB:</td>
<td>Limit search results to publications which are (or are not) cited by the PDBe database and link to the relevant PDBE record</td>
<td><a href="/search/?page=1&amp;query=HAS_PDB:y">HAS_PDB:y</a></td>
</tr>
<tr>
<td>HAS_INTACT:</td>
<td>Limit search results to publications which are (or are not) cited by the IntAct database and link to the relevant IntAct record</td>
<td><a href="/search/?page=1&amp;query=HAS_INTACT:y">HAS_INTACT:y</a></td>
</tr>
<tr>
<td>HAS_INTERPRO:</td>
<td>Limit search results to publications which are (or are not) cited by the InterPro database and link to the relevant InterPro record</td>
<td><a href="/search/?page=1&amp;query=HAS_INTERPRO:y">HAS_INTERPRO:y</a></td>
</tr>
<tr>
<td>HAS_CHEBI:</td>
<td>Limit search results to publications which are (or are not) cited by the ChEBI dictionary and link to the relevant ChEBI record</td>
<td><a href="/search/?page=1&amp;query=HAS_CHEBI:y">HAS_CHEBI:y</a></td>
</tr>
<tr>
<td>HAS_CHEMBL:</td>
<td>Limit search results to publications which are (or are not) cited by ChEMBL and link to the relevant ChEMBL record</td>
<td><a href="/search/?page=1&amp;query=HAS_CHEMBL:y">HAS_CHEMBL:y</a></td>
</tr>
<tr>
<td>HAS_OMIM:</td>
<td>Limit search results to publications which are (or are not) cited by OMIM and link to the relevant OMIM record</td>
<td><a href="/search/?page=1&amp;query=HAS_OMIM:y">HAS_OMIM:y</a></td>
</tr>
<tr>
<td>CITES:</td>
<td>Search for publications that cite a given article; article to be specified in the format, ID_src</td>
<td><a href="/search/?page=1&amp;query=CITES:8521067_med">CITES:8521067_med</a>, <a href="/search/?page=1&amp;query=CITES:IND43783977_agr">CITES:IND43783977_agr</a></td>
</tr>
<tr>
<td>CITED:</td>
<td>Search for publications that have been cited N times</td>
<td><a href="/search/?page=1&amp;query=CITED:100">CITED:100</a></td>
</tr>
<tr>
<td>REFFED_BY:</td>
<td>Search for publications that cite the specified article; format, ID_source (the available data sources are listed in the Web Services Reference Guide)</td>
<td><a href="/search/?page=1&amp;query=REFFED_BY:9497246_med">REFFED_BY:9497246_med</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="databasecitations">2.8 Database Citations</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example></th>
</tr>
<tr>
<td>ACCESSION_ID:</td>
<td>Find articles containing the specified accession number</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=ACCESSION_ID:A12360">ACCESSION_ID:A12360</a></td>
</tr>
<tr>
<td class="multiple_rows" rowspan="20">ACCESSION_TYPE:</td>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/arrayexpress/" target="_blank">ArrayExpress</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:arrayexpress">ACCESSION_TYPE:arrayexpress</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/ena" target="_blank">BioProject</a> records in the European Nucleotide Archive</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:bioproject">ACCESSION_TYPE:bioproject</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/biosamples/" target="_blank">BioSamples</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:biosample">ACCESSION_TYPE:biosample</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite data <a href="http://www.doi.org/" target="_blank">Document Object Identifiers</a></td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:doi&amp;sortby=relevance">ACCESSION_TYPE:doi</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite European Genome-phenome Archive (<a href="https://www.ebi.ac.uk/ega/" target="_blank">EGA</a>) records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:ega">ACCESSION_TYPE:ega</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite EM resources in the Electron Microscopy Data Bank (<a href="http://www.ebi.ac.uk/pdbe/emdb/" target="_blank">EMDB</a>)</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:emdb">ACCESSION_TYPE:emdb</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ensembl.org/index.html" target="_blank">Ensembl</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:ensembl&amp;sortby=relevance">ACCESSION_TYPE:ensembl</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite EudraCT records from the <a href="https://www.clinicaltrialsregister.eu/ctr-search/search" target="_blank">EU Clinical Trials Register</a></td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:eudract&amp;sortby=relevance">ACCESSION_TYPE:eudract</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/ena/" target="_blank">European Nucleotide Archive</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:gen">ACCESSION_TYPE:gen</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/QuickGO/" target="_blank">Gene Ontology</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:go">ACCESSION_TYPE:go</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ebi.ac.uk/interpro/" target="_blank">InterPro</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:interpro&amp;sortby=relevance">ACCESSION_TYPE:interpro</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite NCT clinical studies records from the US NIH <a href="https://clinicaltrials.gov/ct2/home" target="_blank">ClinicalTrials.gov</a> registry</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:nct&amp;sortby=relevance">ACCESSION_TYPE:nct</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.ncbi.nlm.nih.gov/omim" target="_blank">OMIM</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:omim&amp;sortby=relevance">ACCESSION_TYPE:omim</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite Protein Data Bank in Europe (<a href="http://www.ebi.ac.uk/pdbe/" target="_blank">PDB</a>) records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:pdb&amp;sortby=relevance">ACCESSION_TYPE:pdb</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite protein families (<a href="http://pfam.xfam.org/" target="_blank">Pfam</a>) records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:pfam&amp;sortby=relevance">ACCESSION_TYPE:pfam</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.proteomexchange.org/" target="_blank">ProteomeXchange</a> records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:pxd&amp;sortby=relevance">ACCESSION_TYPE:pxd</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite Reference Sequence Database (<a href="http://www.ncbi.nlm.nih.gov/refseq/" target="_blank">RefSeq</a>) records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:refseq&amp;sortby=relevance">ACCESSION_TYPE:refseq</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite records in the dbSNP Short Genetic Variations database (<a href="http://www.ncbi.nlm.nih.gov/projects/SNP/" target="_blank">RefSNP</a>)</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:refsnp&amp;sortby=relevance">ACCESSION_TYPE:refsnp</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite the resource of protein sequence and functional information (<a href="http://www.ebi.ac.uk/uniprot/" target="_blank">UniProt</a>)</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:uniprot&amp;sortby=relevance">ACCESSION_TYPE:uniprot</a></td>
</tr>
<tr>
<td class="multiple_rows">Find articles that cite <a href="http://www.treefam.org/" target="_blank">Treefam</a> (database of animal gene trees) records</td>
<td class="multiple_rows"><a href="/search?page=1&amp;query=ACCESSION_TYPE:treefam&amp;sortby=relevance">ACCESSION_TYPE:treefam</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="sectionlevelsearch">2.9 Section-level search</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="min-width:105px">Syntax word</th>
<th>Description</th>
<th>Example</th>
</tr>
<tr>
<td>ABBR:</td>
<td>Find articles with word "mRNA" in the Abbreviations section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=ABBR:mRNA&amp;sortby=relevance">ABBR:mRNA</a></td>
</tr>
<tr>
<td>ACK_FUND:</td>
<td>Find articles with word "ERC" in the Acknowledgements &amp; Funding section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=ACK_FUND:ERC&amp;sortby=relevance">ACK_FUND:ERC</a></td>
</tr>
<tr>
<td>APPENDIX:</td>
<td>Find articles with word "ethics" in the Appendix section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=APPENDIX:ethics&amp;sortby=relevance">APPENDIX:ethics</a></td>
</tr>
<tr>
<td>AUTH_CON:</td>
<td>Find articles with phrase "Smith" in the Author Contribution section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=AUTH_CON:%22Smith%22&amp;sortby=relevance">AUTH_CON:"Smith"</a></td>
</tr>
<tr>
<td>CASE:</td>
<td>Find articles with word "leukemia" in the Case Study section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=CASE:leukemia&amp;sortby=relevance">CASE:leukemia</a></td>
</tr>
<tr>
<td>COMP_INT:</td>
<td>Find articles with phrase "no conflict" in the Competing Interest section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=COMP_INT:%22no+conflict%22&amp;sortby=relevance">COMP_INT:"no conflict"</a></td>
</tr>
<tr>
<td>CONCL:</td>
<td>Find articles with word "osteoporosis" in the Conclusion section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=CONCL:osteoporosis&amp;sortby=relevance">CONCL:osteoporosis</a></td>
</tr>
<tr>
<td>DISCUSS:</td>
<td>Find articles with word "cardiovascular" in the Discussion section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=DISCUSS:cardiovascular&amp;sortby=relevance">DISCUSS:cardiovascular</a></td>
</tr>
<tr>
<td>FIG:</td>
<td>Find articles with phrase "in vitro" in the Figures section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=FIG:%22in+vitro%22&amp;sortby=relevance">FIG:"in vitro"</a></td>
</tr>
<tr>
<td>INTRO:</td>
<td>Find articles with phrase "protein interactions" in the Introduction &amp; Background section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=INTRO:%22protein+interactions%22&amp;sortby=relevance">INTRO:"protein interactions"</a></td>
</tr>
<tr>
<td>KEYWORD:</td>
<td>Find articles with word "isoform" in the Keywords section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=KEYWORD:isoform&amp;sortby=relevance">KEYWORD:isoform</a></td>
</tr>
<tr>
<td>METHODS:</td>
<td>Find articles with phrase "yeast two-hybrid" in the Materials &amp; Methods section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=METHODS:%22yeast+two-hybrid%22&amp;sortby=relevance">METHODS:"yeast two-hybrid"</a></td>
</tr>
<tr>
<td>OTHER:</td>
<td>Find articles with phrase "transgenic mice" in the Others section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=OTHER:%22transgenic+mice%22&amp;sortby=relevance">OTHER:"transgenic mice"</a></td>
</tr>
<tr>
<td>REF:</td>
<td>Find articles with word "COX2" in the References section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=REF:COX2&amp;sortby=relevance">REF:COX2</a></td>
</tr>
<tr>
<td>RESULTS:</td>
<td>Find articles with phrase "in vivo" in the Results section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=RESULTS:%22in+vivo%22&amp;sortby=relevance">RESULTS:"in vivo"</a></td>
</tr>
<tr>
<td>SUPPL:</td>
<td>Find articles with word "supplementary" in the Supplementary Information section, indicating where supplementary data might be available</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=SUPPL:supplementary&amp;sortby=relevance">SUPPL:supplementary</a></td>
</tr>
<tr>
<td>TABLE:</td>
<td>Find articles with word "comparison" in the Tables section</td>
<td><a href="/search/?scope=fulltext&amp;page=1&amp;query=TABLE:comparison&amp;sortby=relevance">TABLE:comparison</a></td>
</tr>
</tbody>
</table>
</div>
<p class="backtotop">
<a href="#top" class="top_of_page">Back to top</a>
</p>
<h4 id="searchcombinations">3. Search combinations</h4>
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th>Combination</th>
<th>Description</th>
</tr>
<tr>
<td><a href="/search?query=TITLE%3Apancreatitis%09IN_EPMC%3Ay">TITLE:pancreatitis IN_EPMC:y</a></td>
<td>Finds citations in Europe PMC with word pancreatitis in title</td>
</tr>
<tr>
<td><a href="/search?query=AUTH%3Afrossard%20TITLE%3Aacute%20pancreatitis">AUTH:frossard TITLE:acute pancreatitis</a></td>
<td>Finds citations from author Frossard with acute pancreatitis in the title</td>
</tr>
<tr>
<td><a href="/search?query=TITLE%3Apanc*%20AUTH%3Afrossard">TITLE:panc* AUTH:frossard</a></td>
<td>Finds citations from author Frossard where a word in the title starts with 'panc' i.e pancreatic, pancreas, PANCEA <i>(A question mark represents a wildcard for one position, the star any number of positions)</i></td>
</tr>
<tr>
<td><a href="/search?query=JOURNAL%3Alancet%09AUTH%3Afrossard">JOURNAL:lancet AUTH:frossard</a></td>
<td>Finds citations in journal The Lancet from author Frossard</td>
</tr>
<tr>
<td><a href="/search?query=ISSN%3A0140-6736%09AUTH%3Afrossard%20%20%22acute%20pancreatitis%22">ISSN:0140-6736 AUTH:frossard "acute pancreatitis"</a></td>
<td>Finds citations from journal The Lancet (ISSN 0140-6736) with author Frossard and phrase "acute pancreatitis"</td>
</tr>
<tr>
<td><a href="/search?query=AUTH%3Afrossard%20AUTH%3Asteer%20HAS_ABSTRACT%3Ay">AUTH:frossard AUTH:steer HAS_ABSTRACT:y</a></td>
<td>Finds abstracts by authors Steer and Frossard</td>
</tr>
<tr>
<td><a href="/search?query=GRANT_ID%3A058922%20IN_EPMC%3Ay">GRANT_ID:058922 IN_EPMC:y</a></td>
<td>Finds citations in Europe PMC with grant 058922 attached</td>
</tr>
<tr>
<td><a href="/search?query=GRANT_ID%3A%22058992%22%20AUTH%3Anoor">GRANT_ID:"058992" AUTH:noor</a></td>
<td>Finds citations containing author Noor with grant 058992 attached</td>
</tr>
<tr>
<td><a href="/search?query=GRANT_ID%3A05*%20AUTH%3Aamin">GRANT_ID:05* AUTH:amin</a></td>
<td>Finds citations containing author Amin and a grant starting 05 <i>(A question mark represents a wildcard for one position, the star any number of positions)</i></td>
</tr>
</tbody>
</table>
</div>
