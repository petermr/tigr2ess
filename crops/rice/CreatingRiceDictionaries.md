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
        "contentmine": "CM.9febrice.333"
      },
      "name": "monocot",
      "term": "monocot"
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
  
  
<tr><td>Japanese_rice</td><td><a href="https://en.wikipedia.org/wiki/Japanese_rice">Japanese rice</a></td><td>Japanese rice</td><td>https://en.wikipedia.org/wiki/Japanese_rice</td><td><a href="https://www.wikidata.org/wiki/Special:EntityPage/Q28736370">Q28736370</a></td><td /><td><img alt="Stages of rice milling.jpg" decoding="async" width="220" height="110" data-file-width="480" data-file-height="240" src="https:////upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Stages_of_rice_milling.jpg/220px-Stages_of_rice_milling.jpg" /></td><td /></tr><tr><td>Japanese_rice</td><td><a href="https://en.wikipedia.org/wiki/Japanese_rice">Japanese table rice</a></td><td>Japanese table rice</td><td>https://en.wikipedia.org/wiki/Japanese_rice</td><td><a href="https://www.wikidata.org/wiki/Special:EntityPage/Q28736370">Q28736370</a></td><td /><td><img alt="Stages of rice milling.jpg" decoding="async" width="220" height="110" data-file-width="480" data-file-height="240" src="https:////upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Stages_of_rice_milling.jpg/220px-Stages_of_rice_milling.jpg" /></td><td /></tr><tr><td>Japonica_rice</td><td><a href="https://en.wikipedia.org/wiki/Japonica_rice">japonica</a></td><td>japonica</td><td>


