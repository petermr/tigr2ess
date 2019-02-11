# Creating Dictionaries

There are several ways of creating ContentMine dictionaries. We recommend that wherever possible they are linked to 
Wikipedia and Wikidata. This gives them semantic structure and also adds an authority.

## prerequisites and help

You must have installed AMI and be able to run:
```
ami-dictionary
```
This should output the help:
```
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
  ```
  These are the `option`s you can add to the `ami-dictionary` command. We'll indicate the most important.
  
  * `--directory`
  * `--hreftext`
  * `--informat`
  * `--outformats
  * `--terms`
  * `--input`
 
 You are unlikely to use anything else in the TIGR2ESS workshop.
  
 The system also outputs the parameters you entered (some may be created by default). If you have bugs/problems you should always 
 copy these for reporting errors.
  
  ```

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

Specific values (AMIDictionaryTool)
================================
dataCols      null
dictionary    null
dictionaryTop     null
href          null
hrefCols      null
input         null
informat      null
dictInformat  null
linkCol       null
log4j         null
nameCol       null
operation     help
outformats    [xml]
splitCol      ,
termCol       null
terms         null
wikiLinks     [wikipedia, wikidata]
0    [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - no operation given: help

```

# from a list of terms

This is the simplest way. Create a list of terms that are likely to be in Wikipedia and/or Wikidata. Here is an example for monoterpenes:
```
ami-dictionary create 
