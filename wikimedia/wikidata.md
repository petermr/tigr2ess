# Wikidata

Wikipedia contains a huge amount of semi-structured information but not organized in a way where it's computable. In 2012 
Wikimedia launched `Wikidata` (https://en.wikipedia.org/wiki/wikidata) to support formalised computable knowledge.
*This is not a formal treatment - see the link above*
Wikidata defines objects called **Items**. An item is any object which can be precisely defined and given a permanent unique identifier. Thus NIPGR has the unique identifier `Q30282198`, which can be addressed by
https://wikidata.org/wiki/Q30282198

Every Wikidata item (over 50 million) has its own page. Here's NIPGR:
![](nipgr.png)
and more
![](nipgr1.png)

## properties and triples

NIPGR has many `Property`s. For example:
* NIPGR isA facility
* NIPGR hasInceptionDate 1997
* NIPGR hasCoordinateLocation 28N 77E
* NIPGR hasParentOrganization Ministry of Science and technology

These are called `triples`. All this information is computable - for example we can search for facilites,  with parent the Ministry of science and Technology,  over 20 years old and in New Delhi.

This is represented as 
```
Item Property Item
```
or
```
Item Property Value
```
There are about 5000 Properties and each has a unique identifier. Examples we 
Every Wikipedia page (article) has its own Wikidata identifier (but not always vice versa).
Some of the objects with Wikidata identifiers (QIDs) 
