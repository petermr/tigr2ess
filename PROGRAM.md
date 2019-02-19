# ContentMine workshop for TIGR2ESS

A full day work shop to introduce TIGR2ESS delegates to the principles and practice of ContentMining (aka Text and Data Mining, TDM) for plant science 
research.

*Note: all materials in dictionaries and code use only characters 32-127 ("ANSI"). Much software, e.g. browsers, is unable to render higher code points reliably. We appreciate that this does not do justice to names, places and words from non-anglophone cultures.*
**NOTE: This is/will be considerably revised after discussions on 2019-02-08**

## Overview
Throughout this we shall use *Ocimum sanctum* (Holy Basil) as the primary example. Tutorial material has been generated for most steps using *O. sanctum*.

### background
The scientific/medical literature generates thousands of articles per day, and is continuing to increase. This workshop uses a subset, 
the Open Access subset in Europe PubMedCentral (EPMC) which though not comprehensive is up-to-date. It is well suited for rapid overviews 
of subjects, concepts and entities. TDM of the whole literature is messy and difficult but The NIH/NLM has required Open articles to be 
converted to JATS/XML which is easy to download, search and analyse. Although the NIH concentrates on medical literature, they index
enough plant science to find very valuable new insights and summaries.

All the techniques in this workshop are generally valuable in all scientific fields. The major limitation is the availability of open, 
semantic fulltext but the development of preprints and Open Access should imprive this rapidly.

### goals
Delegates will learn how to:
 * [search EPMC for plant science articles](epmcSearch.md) 
 * [download and organize them](getpapers.md) in Content Mine projects (CProjects)
 * understand the power of [Wikipedia and Wikidata](wikimedia/overview.md) for plant sciences and run searches.
 * [create small dictionaries](dictionaries/overview.md) of relevance to TIGR2ESS. 
 * [use dictionaries to search downloaded data](search/overview.md) for terms (entities) of special interest (typically genes, plant species, plant parts, phytochemicals, human diseases,
   countries, funding agencies).
 * analyze the frequency of entities (showing what the "literature" is most interested in).
 * plot the co-occurrence of terms (e.g. plants associated with disease).

### setup
All work is on delgates' laptops. They will need to:
 * install the ContentMine software ("getpapers" and "AMI")
 * verify it works on tests
 * run the specific exercises in the tutorial
 * be able to use a JSON editor for editing dictionaries
 
 Ideally the technology for this should be varified before the full-day workshop
 
# Structured Program 
This lists the formal exercises that we will carry out in the first half of the workshop . All exercises will be verified beforehand to ensure that they:
 * work on major operating systems and hardware. 
 * can be edited in case of variable download speeds or unexpected drop-outs.
 
 The following order may change and some may be combined
 
### check of readiness of delegate installations
 Check that <tt>getpapers</tt> and <tt>AMI</tt> have been installed by everyone. Every delegate will have a memory stick containing:
  * these instructions
  * software (getpapers and AMI)
  * typical searches and results (Ocimum and 3 crops (millet, rice, wheat))
  * current dictionaries 
  
## program flow
(Each of these will have a separate full page)

### EuropePMC (online)
 Use the EuropePMC.org interface to explore how queries work. Understand false positives. Development of complex queries (AND, OR) and the likely pitfalls. 
[details](program/epmc.md)

### getpapers (online)
  *Note. Bandwidth may need to be managed.* 
Download a subset (10 articles) of the *Ocimum* papers in EPMC using <tt>getpapers</tt> initially in XML. Extend query to "ocimum AND country" (this will limit bandwidth). Delegates will then retrieve PDF.  Feedback/discussion of semantics and  XML and the differences between XML and PDF and the values of each. (Delegates can then download more papers in their own time. 
 
### Classifications and searches
 Open resources (MESH/Medline, Taxdump, etc. etc.) . Many of these are being subsumed into Wikidata.
 
### Wikipedia (online)
 What WP is, how it is updated and checked. Overview of plant taxonomy in WP. Special pages (Category: foo, List_of_foo). 

### wikidata (online)
 Exploration and discussion of Items (Q) and Properties (P) relating to *O. sanctum* .

### wikifactmine,(online)
 https://www.wikidata.org/wiki/Wikidata:WikiFactMine . A large set of dictionaries developed by ContentMine generally from SPARQL queries. 
 Creation of a Wikifactmine dictionary for "crops". 

### AMI document transformation (local)
 <tt>AMI</tt> will be used to transform the downloaded XML into HTML (which will be used for the searching). 
 
### word frequency (local)
 <tt>AMI</tt> will be used to compute the raw frequencies of words in each article. The result is displayed in <tt>dataTables</tt>. Discussion on the distruction of terms found in the articles.

### dictionary searching
 <tt>AMI</tt> will be used to search the local HTML papers using *dictionaries*. Initially these will be bundled with the system. Results added to <tt>dataTables</tt>.
The terms will then link back to Wikidata and Wikipedia for interpretation.

### co-occurence
 <tt>AMI</tt> can display the co-occurrence of termsfrom different dictionaries.

### dictionary editing
At this stage it should become clear what the value of dictionaries are. Delegates will be invited to edit JSON dictionaries, initially by adding extra entries. Ideally all entries shoudl reference Wikidata.
Later delegates can create complete (small) dictionaries either by including items by hand, or using AMI to explode Wikipedia pages into dictionaries.

## Delegate research
In the latter part of the day we invite delegates to form small groups and tackle meaningful literature-based projects. These could be centred on other plant (or animal/microbial) species, geographical regions, genes, and even political entities. This may involve:
 * creating a new dictionary for the topic
 * downloading more articles 
 
 There is also the opportunity to use other downstream analysis programs, e.g. R. The <tt>AMI</tt> output is text files on the file system - there are no databases required. Instead there is a schema of file hierarchy and sematics. Therefore any delegates who are fluent in R, Python, shell, etc. can use these files directly.

 
 

