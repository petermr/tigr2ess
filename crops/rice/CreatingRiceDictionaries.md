# Rice Dictionary
### Compiled by Ambarish (ambari73_sit@jnu.ac.in)

## overview
Here is the dictionary for Rice (Oryza). It will cover all rice species and related sarch from the wikipedia page weblinks.

The dictionary is created from the Wikipedia page on Rice https://en.wikipedia.org/wiki/Rice and all associated links. 
Every entry in the dictionary should have a link to another Wikipedia page (and hence to a Wikidata page).

## sources
https://en.wikipedia.org/wiki/Rice

creation from Wikipedia page
ami-dictionary was run on the Wikipedia page https://en.wikipedia.org/wiki/Rice

    ami-dictionary create\
                --hreftext \
                --input https://en.wikipedia.org/wiki/Rice\
                --informat wikipage\
                --dictionary rice \
                --outformats xml,json,html
		
## Run time log for above command



This creates a dictionary of all Wikipedia links in the page. 

Alternately, one may create dictionary from https://en.wikipedia.org/wiki/Category:Rice_varieties with some changes into 
--informat option of command-line.

          ami-dictionary create\
                --hreftext \
                --input https://en.wikipedia.org/wiki/Category:Rice_varieties\
                --informat wikicategory\
                --dictionary Rice_varieties_category \
                --outformats xml,json,html

## Run time log for above command
    >CM.Rice_varieties_category.0>CM.Rice_varieties_category.1>CM.Rice_varieties_category.2>CM.Rice_varieties_category.3>CM.Rice_varieties_category.4>CM.Rice_varieties_category.5>CM.Rice_varieties_category.6>CM.Rice_varieties_category.7>CM.Rice_varieties_category.8>CM.Rice_varieties_category.9>CM.Rice_varieties_category.10>CM.Rice_varieties_category.11>CM.Rice_varieties_category.12>CM.Rice_varieties_category.13>CM.Rice_varieties_category.14>CM.Rice_varieties_category.15>CM.Rice_varieties_category.16>CM.Rice_varieties_category.17>CM.Rice_varieties_category.18>CM.Rice_varieties_category.19>CM.Rice_varieties_category.20>CM.Rice_varieties_category.21>CM.Rice_varieties_category.22>CM.Rice_varieties_category.23>CM.Rice_varieties_category.24>CM.Rice_varieties_category.25>CM.Rice_varieties_category.26>CM.Rice_varieties_category.27>CM.Rice_varieties_category.28>CM.Rice_varieties_category.29>CM.Rice_varieties_category.30>CM.Rice_varieties_category.31>CM.Rice_varieties_category.32>CM.Rice_varieties_category.33>CM.Rice_varieties_category.34>CM.Rice_varieties_category.35>CM.Rice_varieties_category.36>CM.Rice_varieties_category.37>CM.Rice_varieties_category.38>CM.Rice_varieties_category.39>CM.Rice_varieties_category.40>CM.Rice_varieties_category.41>CM.Rice_varieties_category.42>CM.Rice_varieties_category.43>CM.Rice_varieties_category.44>CM.Rice_varieties_category.45>CM.Rice_varieties_category.46>CM.Rice_varieties_category.47>CM.Rice_varieties_category.48>CM.Rice_varieties_category.49>CM.Rice_varieties_category.50>CM.Rice_varieties_category.51>CM.Rice_varieties_category.52>CM.Rice_varieties_category.53>CM.Rice_varieties_category.54>CM.Rice_varieties_category.55>CM.Rice_varieties_category.56 !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0! ++++++++++++++++++++++  +++++++++++++++++++++++++++++++++++

Alternately, one may create dictionary from https://en.wikipedia.org/wiki/Category:Oryza with some changes to 
--informat option of command-line.

         ami-dictionary create\
                --hreftext \
                --input https://en.wikipedia.org/wiki/Category:Oryza\
                --informat wikipage\
                --dictionary Oryza_category \
                --outformats xml,json,html
		
## Run time log for above command

    >CM.rice.0>CM.rice.1>CM.rice.2>CM.rice.3>CM.rice.4>CM.rice.5>CM.rice.6>CM.rice.7>CM.rice.8>CM.rice.9>CM.rice.10>CM.rice.11>CM.rice.12>CM.rice.13>CM.rice.14>CM.rice.15>CM.rice.16>CM.rice.17>CM.rice.18>CM.rice.19>CM.rice.20>CM.rice.21>CM.rice.22>CM.rice.23>CM.rice.24>CM.rice.25>CM.rice.26>CM.rice.27>CM.rice.28>CM.rice.29>CM.rice.30>CM.rice.31>CM.rice.32>CM.rice.33>CM.rice.34>CM.rice.35>CM.rice.36>CM.rice.37>CM.rice.38>CM.rice.39>CM.rice.40>CM.rice.41>CM.rice.42>CM.rice.43>CM.rice.44>CM.rice.45>CM.rice.46>CM.rice.47>CM.rice.48>CM.rice.49>CM.rice.50>CM.rice.51>CM.rice.52>CM.rice.53>CM.rice.54>CM.rice.55>CM.rice.56 !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++


Alternately, one may create dictionary from https://en.wikipedia.org/wiki/List_of_rice_varieties
with some changes to --informat option of command-line.
        
	 ami-dictionary create\
                --hreftext \
                --input https://en.wikipedia.org/wiki/List_of_rice_varieties\
                --informat wikipage\
                --dictionary Oryza_category \
                --outformats xml,json,html

In above command  --informat option should have been to wikitable but the source page does not
contain any table so keep it as of wikipage option.

## Run time log for above command


            >CM.List_of_rice_varieties.90>CM.List_of_rice_varieties.91 !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!  !0!     ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
     Missing wikipedia: :

     1121 Basmati Rice; 1509 Basmati Rice; Carolina Gold; Charleston Gold; Ginpu; Gohyakumangoku; Gouriki; Himenomochi; 
     Kameno'o; Kullakaar; Manchurian Rice (Zizania latifolia); Matta Palakkad; Mỹ Lệ; PR 106 Rice; PR 47 Rice; PR11 Rice; 
     PR14 Rice; PUSA Basmati Rice; Padi Gadu; Ponlai; Pusa Basmati 1121; Pusa Rice; Sharbati Rice; Sugandha Rice; 
     Traditional Basmati Rice; expanding it; high-yielding rice varieties; 
     Missing wikidata: ; 
     1509 Basmati Rice; Charleston Gold; Gohyakumangoku; Himenomochi; Kullakaar; Matta Palakkad; PR 106 Rice; 
     Sharbati Rice; Sona masoori; Sugandha Rice;

		
	

Output of the command generates xml, json and html formatted dictionary files and are directed to /home/users/ContentMine/dictionary/dictionaries folder. 

## Mannual editing the dictionaries.

As the dictionatries created from the wikipage contains lots of informations related the search. These informations are ambiguious, repeated and irrelevant. So why manual editing is required to make it precious to the search task just by removing extraneous entries. One may use online editor or standalone tool to perform the task (JSON Editor - https://jsoneditoronline.org/). This has to be done on the basis of inspection and performing editing on one's own behalf.

There were around 600 entries related rice search. These entries were about rice varities, geographical locations of rice cultivations, rice diseases, minerals, nutrients, germs, micro-organisms, insecticides, agrarian terms, cultural informations, cuisines, chemical compounds, rice research institutes etc. 

Making it more preciuos for the co-occurance search task I removed almost 94 percent entries and left with rice varieties, Oryza species, and very closely associated terms to rice research.

Here is the snippet of dictionaries.

## rice.xml

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





## rice.json

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
   
   
## rice.html


  


