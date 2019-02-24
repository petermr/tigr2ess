# Wikidata

Wikipedia contains a huge amount of semi-structured information but not organized in a way where it's computable. In 2012 
Wikimedia launched `Wikidata` (https://en.wikipedia.org/wiki/wikidata) to support formalised computable knowledge.

*This is a simple treatment - see the link above for in-depth description*

Wikidata defines **Items**. An item is any object which can be precisely identified and given a permanent unique identifier. Thus *Ocimum tenuiflorum* has the unique ID Q960124. Every Wikidata `item` (over 50 million) has a Wikidata page, e.g.
https://www.wikidata.org/wiki/Q960124. Note that unlike Wikipedia pages , Wikidata pages are **language-independent**. The page is large; here's the start
![](https://github.com/petermr/tigr2ess/blob/master/wikimedia/assets/wd_otenuiflorum.png)

## wikidata page

Wikidata pages are generally structured as 
 * header (language, label, description, aliases)
 * Properties
 * Identifiers
 * Non-EN Wikipedia pages 
 

### wikidata header

The header contains:
 * Label (the main "name" for the Item) - language-dependent.
 * description. Free text describing the Item. Very useful when adding mouseover to lists of items.
 * other names/aliases
 
 The description and alises are often not filled and you can help by updating them.

### wikidata properties, statements, triples
* This is based heavily on ideas of the https://en.wikipedia.org/wiki/Semantic_Web *

Wikidata items can have many property statements, relating Items (QIDs) and/or values. Typically these are of the form:
```
 Q960124 P31 Q16521 (references)
 or
 Q960124 P225 "Ocimum tenuiflorum" (language)(references)
 ```
The Items are an uncontrolled list (e.g. no permission is required), but the Properties (ca 6000) are controlled. 
The first statement is typical - read as "*O. tenuiflorum* is-an-instamce-of-a taxon". Statements are often referred to as `triples`:
```
subject predicate object`
```
so we have:
 * *subject*: **Ocimum tenuiflorum** (Q960124)
 * *predicate* **`instanceof`** (P31)
 * *object*: **taxon** (Q16521).
 
 You are NOT expected to memorise the Q and P numbers! The online Wikidata tools can look them up by name interactively.

Properties are generally of two types:
 * "isA" - the suject is some sort-of the object
 * "hasA" - the subject contains one of more objects
 
 Wikidata has qualifiers which make the triple more precise:
 * language (if the object is a String)
 * reference/s to add the validity to the statement.
 
## alternate wikidata pages and synonyms
Synonyms are inescapable in plant science! Wikipedia collects synonyms and provides a single page. Thus searching Wikipedia for "Ocimum sanctum" redirects to https://en.wikipedia.org/Ocimum_tenuiflorum. However Wikidata has a separate page for many synonyms, so "Ocimum sanctum" https://www.wikidata.org/wiki/Q24852786 has:
![](https://github.com/petermr/tigr2ess/blob/master/wikimedia/Assest/wd_osanctum.png)
Now! Shouldn't this page say it is a synonym of *O. tenuiflorum*? Yes! and that highlights an important part od Wikidata - it relies on US to keep it up to date. Note that many of its IDs point to *O. tenuiflorum* pages.

## Identifiers
Wikidata has collected a huge number of identifier systems; at least 25 for plants alone. This is incredibly powerful as it makes it one of single points of entry for plant sciences. Here are some examples - great place to link out beyond Wikimeia - worth browsing!
* ITIS https://www.itis.gov/servlet/SingleRpt/SingleRpt?search_topic=TSN&search_value=507863#null (taxonomy)
* Encyclopedia of Life (https://eol.org/pages/480298) which has 12 attributes including *habitat* and an interactive distribution map.
* GBIF https://www.gbif.org/species/2927100 with a world map and many synonyms
* EPPO https://gd.eppo.int/taxon/OCISA many non-English names
* iNaturalist: https://www.inaturalist.org/taxa/181060-Ocimum-tenuiflorum Volunteer science observations!
* Kew World Checklist: http://wcsp.science.kew.org/namedetail.do?name_id=137105 lists of countries
* Pollen database https://www.paldat.org/pub/Ocimum_tenuiflorum/300111
* Plants for a Future https://pfaf.org/user/Plant.aspx?LatinName=Ocimum+tenuiflorum
* Invasive species https://www.cabi.org/isc/datasheet/110287 large list of distribution,tolerance, etc.
* FloraBase (Western Australia): https://florabase.dpaw.wa.gov.au/search/current/13969 "O. tenuiflorum" is not current!

## Other wikipedia and commons
**This is the best place to find non-English Wikipedias** 
![](https://github.com/petermr/tigr2ess/blob/master/wikimedia/Assest/wd_otherwp.png)







