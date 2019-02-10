# Rice Dictionary
## Compiled by Ambarish (ambari73_sit@jnu.ac.in)

### overview
Here is the dictionary for Rice (Oryza). It will cover all rice species and related sarch from the wikipedia page weblinks.

The dictionary is created from the Wikipedia page on Rice https://en.wikipedia.org/wiki/Rice and all associated links. 
Every entry in the dictionary should have a link to another Wikipedia page (and hence to a Wikidata page).

### sources
https://en.wikipedia.org/wiki/Rice

creation from Wikipedia page
ami-dictionary was run on the Wikipedia page https://en.wikipedia.org/wiki/Rice

ami-dictionaries create\
 --hreftext \
 --input https://en.wikipedia.org/wiki/Rice\
 --informat wikipage\
 --dictionary rice \
 --outformats xml
This creates a dictionary of all Wikipedia links in the page. 

Output of the command generates xml, json and html formatted dictionary files and are directed to /home/users/ContentMine/dictionary/dictionaries folder. 

## Mannual editing the dictionaries.

As the dictionatries created from the wikipage contains lots of informations related the search. These informations are ambiguious, repeated and irrelevant to the the search. So why manual editing is required to make it precious to the search task just by removing extraneous entries. One may use online editor or standalone tool to perform the task. This has to be done on the basis of inspection and performing editing on one's own behalf.

There were around 600 entries related rice search. These entries were about rice varities, geographical locations of rice cultivations, rice diseases, minerals, nutrients, germs, micro-organisms, insecticides, agrarian terms, cultural informations, cuisines, chemical compounds, rice research institutes etc. 

Making it more preciuos for the co-occurance search task I removed almost 94 percent entries and left with rice varieties, Oryza species, and very closely associated terms to rice research.

Here is the snippet of dictionaries.

### rice.xml

<entry term="List of rice diseases" name="List of rice diseases" url="/wiki/List_of_rice_diseases" id="CM.9febrice.285" wikipedia="List_of_rice_diseases" />
	<entry term="List of rice varieties" name="List of rice varieties" url="/wiki/List_of_rice_varieties" id="CM.9febrice.287" wikipedia="List_of_rice_varieties" />
	<entry term="monocot" name="monocot" url="/wiki/Monocotyledon" id="CM.9febrice.333" wikipedia="Monocotyledon" />
	<entry term="New Rices for Africa" name="New Rices for Africa" url="/wiki/New_Rices_for_Africa" id="CM.9febrice.348" wikipedia="New_Rices_for_Africa" />
	<entry term="O. nivara" name="O. nivara" url="/wiki/Oryza_nivara" id="CM.9febrice.363" wikipedia="Oryza_nivara" />
	<entry term="Oryza" name="Oryza" url="/wiki/Oryza" id="CM.9febrice.368" wikipedia="Oryza" />
	<entry term="Oryza glaberrima" name="Oryza glaberrima" url="/wiki/Oryza_glaberrima" id="CM.9febrice.369" wikipedia="Oryza_glaberrima" />
	<entry term="Oryza rufipogon" name="Oryza rufipogon" url="/wiki/Oryza_rufipogon" id="CM.9febrice.370" wikipedia="Oryza_rufipogon" />
	<entry term="Oryza sativa" name="Oryza sativa" url="/wiki/Oryza_sativa" id="CM.9febrice.371" wikipedia="Oryza_sativa" />
	<entry term="Oryza sp." name="Oryza sp." url="/wiki/Oryza_sp." id="CM.9febrice.372" wikipedia="Oryza_sp." />
	<entry term="paddy" name="paddy" url="/wiki/Paddy_field" id="CM.9febrice.376" wikipedia="Paddy_field" />
	<entry term="Paddy field" name="Paddy field" url="/wiki/Paddy_field" id="CM.9febrice.377" wikipedia="Paddy_field" />
	<entry term="panicle rice mite" name="panicle rice mite" url="/wiki/Panicle_rice_mite" id="CM.9febrice.381" wikipedia="Panicle_rice_mite" />
	<entry term="Patna rice" name="Patna rice" url="/wiki/Patna_rice" id="CM.9febrice.390" wikipedia="Patna_rice" />
	<entry term="ponni" name="ponni" url="/wiki/Ponni_Rice" id="CM.9febrice.413" wikipedia="Ponni_Rice" />





### rice.json

 {
      {
      "identifiers": {
        "contentmine": "CM.9febrice.287"
      },
      "name": "List of rice varieties",
      "term": "List of rice varieties"
    },
   
   {
      "identifiers": {
        "contentmine": "CM.9febrice.368"
      },
      "name": "Oryza",
      "term": "Oryza"
    },
    {
      "identifiers": {
        "contentmine": "CM.9febrice.369"
      },
      "name": "Oryza glaberrima",
      "term": "Oryza glaberrima"
    },
    {
      "identifiers": {
        "contentmine": "CM.9febrice.370"
      },
      "name": "Oryza rufipogon",
      "term": "Oryza rufipogon"
    },
    {
      "identifiers": {
        "contentmine": "CM.9febrice.371"
      },
      "name": "Oryza sativa",
      "term": "Oryza sativa"
    },
    {
      "identifiers": {
        "contentmine": "CM.9febrice.372"
      },
      "name": "Oryza sp.",
      "term": "Oryza sp."
    }
}
   
   
### rice.html


  


