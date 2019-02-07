# Europe PMC search

This describes how to use EuropePMC (http://europepmc.org) as a web-based search engine.
### *overview*
*EuropePMC has other features than search (e.g. author manuscript upload) and there is a lot of emphasis on authors, grants, etc. The full documentation is in http://europepmc.org/Help but this is long. Later we suggest some of the more important sections:*

*Note: EPMC has other useful links, e.g. https://www.ebi.ac.uk/training/online/course-list?field_course_subject_area_tid%5B%5D=15 (List of courses) and https://www.ebi.ac.uk/training/online/course/effective-literature-research-europe-pmc (Introductory).

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

### AND operator

```
wheat AND gluten
```
or
```
wheat gluten
```
gives 8911 hits

![EPMC boolean](https://github.com/petermr/tigr2ess/blob/master/epmc_wheat_query.png )

### OR operator
```
wheat OR gluten
```
gives 175163

### NOT operator
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
To search for "wheat gluten" (i.e. gluten from wheat) the phrases must be quoted (this prevents the AND being implied).
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

## MORE ADVANCED (make sure you understand the first part)
These are some of the tools, sections, annotations and concepts that will be useful for subject-based searches.
*NOTE: the advanced search for terms is not intuitive. Make sure you are competent before you try this. Also note that most of the functionality could be created manually. The advantage of the Query Builder is that brackets and quotes are likely to be correct. But I haven't managed to get some of the functionality to work*
### synonyms
I haven't got http://europepmc.org/Help#usesynonyms to work.

## Syntax
See: http://europepmc.org/Help#SSR.
**The following is copied with thanks from EPMC under CC BY SA licence**. *some of their material is not relevant to the TIGR2ESS workshop and has been snipped.*

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

The most valuable fields for TIGR2ESS are title, author, date.

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

These are terms which EPMC have used to mine the full-text and are likely to have better precision. However they only cover a limited number of fields and have a biomedical emphasis.

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


<b>The dates are probably the most important part of this section</b>
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
<td>HAS_PREPRINT:</td>
<td>Limit search results to peer reviewed articles which were preceded by a preprint version of the article</td>
<td><a href="/search/?page=1&query=HAS_PREPRINT:y">HAS_PREPRINT:y</a></td>
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
</tbody>
</table>
</div>

<b>IMPORTANT - sections are an important way of disambiguating</b>
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
