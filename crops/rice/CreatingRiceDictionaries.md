# Rice Dictionary
### Compiled by Ambarish (ambari73_sit@jnu.ac.in, er.ambarish@nipgr.ac.in)

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
	
Description of command-line options and parameters along with usage help.

    ambarish123@ubuntu:~$ ami-dictionary
    Usage: ami-dictionary [OPTIONS] [<operation>[,<operation>...]...]
    Description
    ===========
    Manages AMI dictionaries
    Parameters
    =========
      [<operation>[,<operation>...]...]
                            primary operation: (create, display, help, translate);
                              if no operation, runs help
                              Default: help
    Options
    =======
      --basename=<userBasename>
                            User's basename for outputfiles (e.g. foo/bar/<basename>.
                              png. By default this is computed by AMI. This allows
                              users to create their own variants, but they won't be
                              known by default to subsequentapplications
      --baseurl=<baseUrl>   base URL for all wikipedia links
                              Default: https://en.wikipedia.org/wiki
      --booleanquery[=<booleanQuery>]
                            generate query as series of chained OR phrases
      --datacols=datacol[,datacol...]...
                            use these columns (by name) as additional data fields in
                              dictionary. datacols='foo,bar' creates foo='fooval1'
                              bar='barval1' if present. No controlled use or
                              vocabulary and no hyperlinks.
      --directory=<dictionaryTopname>
                            top directory containing dictionary/s. Subdirectories
                              will use structured names (NYI). Thus dictionary
                              'animals' is found in '<directory>/animals.xml', while
                              'plants.parts' is found in <directory>/plants/parts.
                              xml. Required for relative dictionary names.
      --dryrun=<dryrun>     for testing runs a single phase without output, deletion
                              or transformation.(NYI).
      --excludebase=<excludeBase>...
                            exclude child files of cTree (only works with --ctree).
                              Currently must be explicit or with trailing percent
                              for truncated glob.
      --excludetree=<excludeTrees>...
                            exclude the CTrees in the list. (only works with
                              --cproject). Currently must be explicit but we'll add
                              globbing later.
      --forcemake           force 'make' regardless of file existence and dates.
      --hrefcols=hrefcol[,hrefcol...]...
                            external hyperlink column from table; might be Wikidata
                              or remote site(s)
      --hreftext            hyperlinks from text (maybe excludes tables); requires
                              wikipedia or wikitable input at present; still under
                              test
      --includebase=<includeBase>...
                            include child files of cTree (only works with --ctree).
                              Currently must be explicit or with trailing percent
                              for truncated glob.
      --includetree=<includeTrees>...
                            include only the CTrees in the list. (only works with
                              --cproject). Currently must be explicit but we'll add
                              globbing later.
      --informat=input format
                            input format (csv, wikicategory, wikipage, wikitable)
      --linkcol=<linkCol>   column to extract link to internal pages. main use
                              Wikipedia. Defaults to the 'name' column
      --log4j=<log4j> <log4j>
                            format: <classname> <level>; sets logging level of
                              class, e.g.
                             org.contentmine.ami.lookups.WikipediaDictionary INFO
      --logfile=<logfile>   log file for each tree/file/image analyzed.
      --namecol=<nameCol>[,<nameCol>...]...
                            column(s) to extract name; use exact case (e.g. Common
                              name)
      --outformats=output format[,output format...]...
                            output format (xml, html, json)
                              Default: [xml]
      --query[=query]       generate query for cut and paste into EPMC or similar.
                              value sets size of chunks (too large crashes EPMC). If
                              missing, no query generated.
                              Default: 10
      --rawfiletypes=<rawFileFormats>[,<rawFileFormats>...]...
                            suffixes of included files (html, pdf, xml): can be
                              concatenated with commas
      --splitcol=input separator
                            character to split input values; (default: ,)
                              Default: ,
      --termcol=<termCol>   column(s) to extract term; use exact case (e.g. Term).
                              Could be same as namecol
      --terms=<terms>[,<terms>...]...
                            list of terms (entries), comma-separated
      --urlref=<urlref>[,<urlref>...]...
                            for non-structured pages I think
      --wikilinks[=<wikiLinks>[,<wikiLinks>...]...]
                            try to add link to Wikidata and/or Wikipedia page of
                              same name.
                              Default: wikipedia,wikidata
      --wombatx=<wombatx>     Default: 99
      --wombaty=<wombaty>     Default: 0
      -d, --dictionary=<dictionary>...
                            input or output dictionary name/s. for 'create' must be
                              singular; when 'display' or 'translate', any number.
                              Names should be lowercase, unique. [a-z][a-z0-9._].
                              Dots can be used to structure dictionaries
                              intodirectories. Dictionary names are relative to
                              'directory'. If <directory> is absent then dictionary
                              names are absolute.
     -h, --help                Show this help message and exit.
     -i, --input=<input>       input stream; URL if starts with 'http' else file
     -p, --cproject=CProject   CProject (directory) to process. This can be (a) a child
                              directory of cwd (current working directory (b) cwd
                              itself (use -p .) or (c) an absolute filename. No
                              defaults. The cProject name is the basename of the
                              file.
     -t, --ctree[=CTree]       CTree (directory) to process. This can be (a) a child
                              directory of cwd (current working directory, usually
                              cProject) (b) cwd itself, usually cTree (use -t .) or
                              (c) an absolute filename. No defaults. The cTree name
                              is the basename of the file.
     -v, --verbose             Specify multiple -v options to increase verbosity.
                            For example, `-v -v -v` or `-vvv`We map ERROR or WARN ->
                              0 (i.e. always print), INFO -> 1(-v), DEBUG->2 (-vv)
                              Default: []
    -V, --version             Print version information and exit.


In general one may go for only required options along with the create operation of the ami-dictionary tool.

Brief description of the used options into the command-line.

- ami-dictionary - tool name.

- create - name of the operation (operation to create dictioanry)

- --hreftext - option to retrieve hyperlink from wikipedia or wikidata page.

- --input - option to pass-on wikipedia page weblink. e.g https://en.wikipedia.org/wiki/Rice\

- --informat - option to input format ( it may vary as per the search page content i.e wikitable or wikicontent or wikipage) here used value is wikipage.

- --dictionary  - option for the base name of the dictionary file e.g - rice.

- --outformats - option for the output file format e.g - xml,json or html.

These are required options and operations which will further be used into command-lines with some modifications to 
--informat and --input wikipedia page weblink. Please refer the related documentation over the repository.
   

## Run time log for above command


Run time log for the passed-on generic values of the ami-dictionay tool.
    
    Generic values (AMIDictionaryTool)
     ================================
    basename            null
    cproject            
    ctree               
    cTreeList           null
    dryrun              false
    excludeBase         null
    excludeTrees        null
    file types          []
    forceMake           false
    includeBase         null
    includeTrees        null
    log4j               
    logfile             null
    verbose             0

Run time log for the passed-on generic values of the ami-dictionary tool.

    Specific values (AMIDictionaryTool)
    ================================
    dataCols      null
    dictionary    [Rice]
    dictionaryTop     null
    href          
    hrefCols      null
    input         https://en.wikipedia.org/wiki/Rice
    informat      wikipage
    dictInformat  null
    linkCol       null
    log4j         null
    nameCol       null
    operation     create
    outformats    [xml, json, html]
    splitCol      ,
    termCol       null
    terms         null
    wikiLinks     [wikipedia, wikidata]

    [main] DEBUG org.contentmine.ami.lookups.WikipediaDictionary  - failed to find header
 
     .............^[[A....................................................................!...........................................................!...!!!.!.!.!.!.!.!.!.!......!!!!!!!!!!...........!!!!!!!!!!..............!!!!!!!!!!....!!!!!!!!!!....................!!!!..........!...!!.......!!!!.........!...!!......................!....!...!.........................!!.................!....................................!...............!.........!....!.................................................................!................!.!...............................................................!.......................

Above is the log of running steps for dictionary creation.  Message -     [main] DEBUG org.contentmine.ami.lookups.WikipediaDictionary  - failed to find header - is trivial to the operation.
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
                --informat wikicategory\
                --dictionary Oryza_category \
                --outformats xml,json,html
		
## Run time log for above command

Generic values and specific values to the command-line are same as stated into above one. (with some modifications into --informat  and --input for search link.)

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

Run time display of generic and specific values are same above with changes to --informat option.


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

There were around 600 entries related rice search. These entries were about rice varieties, geographical locations of rice cultivations, rice diseases, minerals, nutrients, germs, micro-organisms, insecticides, agrarian terms, cultural informations, cuisines, chemical compounds, rice research institutes etc. 

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


  


