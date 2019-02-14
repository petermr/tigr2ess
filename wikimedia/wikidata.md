# Wikidata
** under construction**

Wikipedia contains a huge amount of semi-structured information but not organized in a way where it's computable. In 2012 
Wikimedia launched `Wikidata` (https://en.wikipedia.org/wiki/wikidata) to support formalised computable knowledge.

*This is not a formal treatment - see the link above*

Wikidata defines **Items**. An item is any object which can be precisely identified and given a permanent unique identifier. Thus *Ocimum tenuiflorum* has the unique ID Q960124. Every Wikidata `item` (over 50 million) has a Wikidata page, e.g.
https://www.wikidata.org/wiki/Q960124. Note that unlike Wikipedia pages , Wikidata pages are **language-independent**. The page is large; here's the start
![](wd_otenuiflorum.png)

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

Properties are generally of two types:
 * "isA" - the suject is some sort-of the object
 * "hasA" - the subject contains one of more objects
 
 Wikidata has qualifiers which make the triple more precise:
 * language (if the object is a String)
 * reference/s to add the validity to the statement.
 


