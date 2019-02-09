# Searching EPMC

*Vinita - merge your own work and my pages into a single tutorial . This should include:*

## assets
see also [assets](../epmcSearches)

## AIMS

* to understand how an Open Access repository provides search
* to appreciate precision/recall and find ways of increasing either (AND, OR, NOT)
* to anticipate ambiguity in searches

## About EPMC

EuropePMC (http://europepmc.org/) provides ca 2.7 million Open Access articles in biomedical science. 
ContentMine has written software (`getpapers`) which transmits queries to EPMC and automatically downloads the resultant hits as 
fulltext articles. The Open Access subset has ca 2.7 million biomedical articles, which although not comprehensive, has enough 
plant material to be useful.

## limitations of EPMC

**NO LITERATURE SEARCHES ARE EVER PERFECT**. We have no control over what is searched and in many
cases we know it's deficient. None of the commercial services abstract *all* the literature, and nor does NIH. 
If you *don't* find an article it could be because.
* it has never been indexed by the engines you use (the Global South is often ignored)
* it is closed access
* it falls outside the remit of EPMC. For example dinosaurs are often omitted and much plant/agriculture
* it is too new (though EPMC is not far behind)
* it's a thesis or preprint (though EPMC now indexes bioarxiv and other servers).

## Precision and Recall in Retrieval
See https://en.wikipedia.org/wiki/Precision_and_recall.
This section is about whether we retrieve the correct documents (later we'll discuss searching inside them). 
This is a fundamental concept throughout the workshop.  The measures are:
* **precision**. How accurate are the searches?
* **recall** how much of what we search are we getting?

In these exercises we concentrate on precision - trying to get the searches as accurate as possible.
There are 4 categories of result:

* **true positives TP**. Accurate retrieval of wanted material.
* **true negatives TN**. Not getting material that we didn't want.
* **false positives FP**. Getting material we didn't want.
* **false negatives FN**. Not getting material we wanted.

**We can't make any formal estimate of the number of negatives**. We much keep our brains open and always ask "could we have missed something?" and try to create another query. 

## limitations of text-based search

Text indexing is powerful for precise concepts - and plant science has many good examples. Scientists tend to use formal language and this helps a lot. But many concepts are not easily expressed in text and are not covered here. Among these are:

* chemical structures. There are a near-infinite number of names for a natural product and text searching fails. (The document can be indexed by substructure but not in this workshop).
* numbers. we cannot search for "rainfall of 100 cm yr-1", "farms over 100 hectares", "small plants", etc as these terms will not occurr explicitly.
* generality. The term "basil" is in common use (e.g. for cooking) and will include many variants. 

### synonyms, abbreviations and common names
Many object have synonyms and nlless we know them we can't search for them. In our example of "Holy basil" we find:
* *Ocimum sanctum*
* *O. sanctum*
* *Ocimum tenuiflorum*
* Holy basil.
* Thai basil
* Tulsi

Natural Language Processors (NLP) can help by analysing large numbers of document, but here we use lists of synonyms, especially:

* EuropePMC (in chemicals, species and disease but not universal).
* Wikipedia/Wikidata

## Exercises

**The main theme of the tutorial will be searching for knowledge about *Ocimum sanctum* (Holy/Thai Basil). Searches and analyses here can be adapted for crops, pests, etc.**


### Simple searches on EPMC.
*Vinita, please edit where needed. I have created some screenshots which may be useful*

Visit http://europepmc.org and run searches

* **Ocimum** - too general
* **Ocimum sanctum**
* Does **O. sanctum** get as many hits?
* Use the Open Access button to restrict to retrievable fulltext

## synonyms

Consult https://en.wikipedia.org/wiki/Ocimum_tenuiflorum :
"Ocimum tenuiflorum (synonym Ocimum sanctum), commonly known as holy basil, tulasi (sometimes spelled thulasi) or tulsi,..." 

* how many hits for "Ocimum tenuiflorum" vs "Ocimum sanctum?"
* ... for "tulasi"? ... "tulsi"

Can you create an aggregrated query which includes all of the synonyms? 
*Vinita: give examples of OR and show how brackets work*


## false positives (disambiguation)

"Tulsi" is also a human name so gives many false positives:

* use AUTH fields in EPMC to reject FP.
