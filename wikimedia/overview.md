# Wikipedia and Wikimedia

These are the key resources for adding semantics to the documents we extract. Most of you will know Wikipedia, but Wikidata is a new
extension. It provides structured precise knowledge for machines to process and it's very well supported in biomedical where many of the main 
databases (e.g. MESH) have been integrated. The plant taxonomy support is good and many of the identifier systems (USDA, GBIF, ITIS ... at least 25) have been 
incorporated.

We will use *Ocimum sanctum* as our example.

## Wikipedia for *O. Sanctum* (plant)

If we look for *Ocimum sanctum* in Wikipedia we are redirected to
https://en.wikipedia.org/wiki/Ocimum_tenuiflorum .
This is because *Ocimum tenuiflorum* is a **synonym** and preferred in Wikipedia. 


### header
The first sentence of the entry/page is very useful, especially when creating dictionaries.
![](./wp_header.png)
This shows disambiguation, and the first line shows synonyms.
### taxonomy and synonyms (right)

<table>
<tr><td><img src="./wp_taxonomy.png" height="50%"/></td><td><img src="./wp_synonyms.png" style="height:50%;"/></td></tr>
</table>


### classifcations (bottom)
![](./wp_listofspices.png)
![](./wp_identifiers.png)
![](./wp_categories.png)

## Wikipedia for Menthol (phytochemical)
https://en.wikipedia.org/wiki/Menthol
Note the huge *infobox* on the right. This contains:
<tr><td>![](./wp_structure.png)</td><td>![](./wp_names.png)</td><td>![](./wp_chemids.png)</td><td>![](./wp_properties
.png)</td></tr>






