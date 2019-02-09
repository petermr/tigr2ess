# Searching EPMC

*Vinita - merge your own work and my pages into a single tutorial . This should include:*

## assets
see also [assets](../epmcSearches)

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


## Exercises
** The main theme of the tutorial will be searching for knowledge about *Ocimum sanctum* (Holy/Thai Basil). Searches and analyses can be 
adapted for crops, pests, etc.**


### Simple searches on EPMC.
*Vinita, please edit where needed*
Searches are balanced between . (see 

