# Creating Dictionaries

There are several ways of creating ContentMine dictionaries. We recommend that wherever possible they are linked to 
Wikipedia and Wikidata. This gives them semantic structure and also adds an authority.

## prerequisites and help

You must have installed AMI and be able to run:
```
ami-dictionary
```
This should output the help. It's long, and we have snipped ([...]) most of the 25+ options
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
  [...]
      --directory=<dictionaryTopname>
                            top directory containing dictionary/s. Subdirectories
                              will use structured names (NYI). Thus dictionary
                              'animals' is found in '<directory>/animals.xml', while
                              'plants.parts' is found in <directory>/plants/parts.
                              xml. Required for relative dictionary names.
  [...]
                              
      --hreftext            hyperlinks from text (maybe excludes tables); requires
                              wikipedia or wikitable input at present; still under
                              test
  [...]
                              
      --informat=input format
                            input format (csv, wikicategory, wikipage, wikitable)
  [...]
      --outformats=output format[,output format...]...
                            output format (xml, html, json)
                              Default: [xml]
  [...]
                              
      --terms=<terms>[,<terms>...]...
                            list of terms (entries), comma-separated
  [...]
                            
      --wikilinks[=<wikiLinks>[,<wikiLinks>...]...]
                            try to add link to Wikidata and/or Wikipedia page of
                              same name.
                              Default: wikipedia,wikidata
  [...]

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
   [...]
  -v, --verbose             Specify multiple -v options to increase verbosity.
                            For example, `-v -v -v` or `-vvv`We map ERROR or WARN ->
                              0 (i.e. always print), INFO -> 1(-v), DEBUG->2 (-vv)
                              Default: []
  -V, --version             Print version information and exit.
  ```

## options
  Options control what the command does and operates upon. Here are ones you will encounter
  
  * `--directory`
  * `--hreftext`
  * `--informat`
  * `--outformats`
  * `--terms`
  * `--input`
 
 You are unlikely to use anything else in the TIGR2ESS workshop.

## input values
 The system also outputs the values you entered (some may be created by default). If you have bugs/problems you should always 
 include these when reporting errors.
  
  ```

Generic values (AMIDictionaryTool)
================================
basename            null
[...]
verbose             0

Specific values (AMIDictionaryTool)
================================
dataCols      null
[...]
outformats    [xml]
[...]
wikiLinks     [wikipedia, wikidata]

```

# 1. Creating from a list of terms

This is the simplest way. Create a list of terms that are likely to be in Wikipedia and/or Wikidata. Here is an example for monoterpenes.
`cd` to the place where you want to put the dictionaries.

## input
```
ami-dictionary create --terms thymol pineol menthol --dictionary myterpenes --directory mydictionaries --outformats xml,html
```
Let's look at the components:
* `ami-dictionary` runs the command.
* `create` is one of the several parameters that can be used (we'll see others later).
* `--terms` requires a list of terms (as many as you like until the next `--`) here `thymol pineol menthol`.
* `--dictionary myterpenes` creates the `basename` for the output dictionaries.
* `--directory mydictionaries` the directory where to put the dictionaries. This is relative to where you run the command (unless a full pathname is given, e.g. `/Users/pm286/ContentMine/dictionaries/`.
* `outformats "xml,html"` output dictionaries in various formats. Hers it creates `myterpenes.xml` and `myterpenes.html`. 

## output
```
 ami-dictionary create --terms thymol pineol menthol --dictionary myterpenes --directory mydictionaries --outformats xml,html
```
### input values
This echoes the input parameters. (Some are snipped [...]). The important ones are annotated with <b>***</b>.
```
Generic values (AMIDictionaryTool)
================================
basename            null
[...]
logfile             null
verbose             0

Specific values (AMIDictionaryTool)
================================
dataCols      null
dictionary    [myterpenes]  ***
dictionaryTop     mydictionaries  ***
href          null
hrefCols      null
input         null
informat      null
dictInformat  null
linkCol       null
log4j         null
nameCol       null
operation     create   ***
outformats    [xml, html]  ***
splitCol      ,
termCol       null
terms         null
wikiLinks     [wikipedia, wikidata] ***
```
### output
```
.!.>CM.myterpenes.0>CM.myterpenes.1>CM.myterpenes.2+++
Missing wikipedia: :

pineol; 
```
The raw output can be verbose so we normally track each dictionary entry with a single character. `.` or `+` normally means OK, `!` pr `?` means something went wrong. We got:
```
.!.
```
so something went wrong with `pineol`.  The diagnostic:
```
Missing wikipedia: :

pineol; 
```
means that we couldn't find `pineol` in Wikpedia (but we could find it in Wikidata).

### dictionaries

The XML dictionary contains:
```
<?xml version="1.0" encoding="UTF-8"?>
<dictionary title="myterpenes">
 <entry term="menthol" wikipedia="menthol" wikidata="Q407418" name="‎(-)-menthol‎" description="chemical compound" id="CM.myterpenes.0"/>
 <entry term="pineol" wikidata="Q198654" name="‎pineal gland‎" description="small endocrine gland found in most vertebrates, which produces melatonin; in humans, located in the epithalamus, in a groove where the two halves of the thalamus join; its shape and size resembles a pine nut, after which it is named" id="CM.myterpenes.1"/>
 <entry term="thymol" wikipedia="thymol" wikidata="Q408883" name="‎thymol‎" description="chemical compound" id="CM.myterpenes.2"/>
 <query>('menthol') OR ('pineol') OR ('thymol')</query>
</dictionary>
```
This is a <b>`dictionary`</b> "element" with 3 <b>`entry`</b> "child elements" (notice the indents). Each entry contains 6 "attributes", e.g.:
* `term="menthol"` the term that will be used for identification and searching.
* `name="‎(-)-menthol‎"` the name by which it is known in Wikipedia or Wikidata.
* `wikipedia="thymol"` the relative address of the Wikipedia entry 
* `wikidata="Q407418"` the Wikidata identifier (aka `item`)
* `description="chemical compound"` Wikidata's formalised description (which can sometimes be used for classification).
* `id="CM.myterpenes.0"` a universal identifier over ContentMine dictionaries.

### goof-up!!
The entry for `pineol` is not a chemical compound! That's because I mistyped `cineol`! And that's why we never found its entry. Wikidata did a fuzzy search and found `pineal` .
**This is a warning to check everything! Don't trust Wikidata blindly. Or anything else!**

# 2. Creating from Wikipedia pages.
This is a simple brute-force way of extracting links from Wikipedia. We are interested in **links to other Wikipedia pages**. In some cases this adds valuable similar terms; in other cases it's mainly noise. You will certainly need to edit the result. Trying "holy basil"...
```
ami-dictionary create --informat wikipage --input https://en.wikipedia.org/wiki/Ocimum_tenuiflorum --dictionary otenuiflorum --directory mydictionaries --outformats xml,html
```
Note the input:
```
--informat wikipage --input https://en.wikipedia.org/wiki/Ocimum_tenuiflorum
```
which shows the type of input and also the address.

The significant input is:
```
Specific values (AMIDictionaryTool)
================================
dictionary    [otenuiflorum]
dictionaryTop     mydictionaries
input         https://en.wikipedia.org/wiki/Ocimum_tenuiflorum
informat      wikipage
operation     create
outformats    [xml, html]
wikiLinks     [wikipedia, wikidata]
```
## output
(This may change in later versions)
```
......................................!....!.....!...!..................!....!.........!..............!.............++++++++++++0    [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - skipped wikipedia: citation needed
++++++++0    [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - skipped wikipedia: full citation needed
+++++++++++++++++++++++ !WP +++++++++++++++++++++++++++++++++++2    [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to mydictionaries/otenuiflorum.xml
4    [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to mydictionaries/otenuiflorum.html
 !0!  !0!  !0!  !0! ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Missing wikipedia: :

DNA barcodes; conventional medical research; full citation needed; khao phat kraphao; morphotypes; petioled; phylogeographical; β-elemene; 
Missing wikidata: :

; khao phat kraphao; 
```
Note some missing terms (some due to parts of speech).

## dictionary
The created dictionary has 80 entries and we have annotated probable FPs (you may differ!):
```
<dictionary title="otenuiflorum">
    <entry term="Angiosperms" url="/wiki/Flowering_plant" wikidata="Q25314" name="‎angiosperms‎" description="clade of flowering plants (in APG I-III)" id="CM.otenuiflorum.0" wikipedia="Flowering_plant"/>
    <entry term="anthocyanins" url="/wiki/Anthocyanin" wikidata="Q262547" name="‎anthocyanin‎" description="class of chemical compounds" id="CM.otenuiflorum.1" wikipedia="Anthocyanin"/>
    <entry term="Asterids" url="/wiki/Asterids" wikidata="Q747502" name="‎asterids‎" description="major clade of plants (in APG I, II and III)" id="CM.otenuiflorum.2" wikipedia="Asterids"/>
 FP*<entry term="avatars" url="/wiki/Avatar" wikidata="Q2873370" name="‎Avatars‎" description="2008 album by William Sheller" id="CM.otenuiflorum.3" wikipedia="Avatar"/> 
    <entry term="Ayurveda" url="/wiki/Ayurveda" wikidata="Q132325" name="‎ayurveda‎" description="system of medicine with historical roots in the Indian subcontinent" id="CM.otenuiflorum.4" wikipedia="Ayurveda"/>
 FP*<entry term="Bathinda" url="/wiki/Bathinda" wikidata="Q709319" name="‎Bathinda‎" description="city" id="CM.otenuiflorum.5" wikipedia="Bathinda"/>
 FP*<entry term="Binomial name" url="/wiki/Binomial_nomenclature" wikidata="Q36642" name="‎binomial nomenclature‎" description="principle of giving species of living things a two-part name" id="CM.otenuiflorum.6" wikipedia="Binomial_nomenclature"/>
    <entry term="biogeographical" url="/wiki/Biogeographical" wikidata="Q796174" name="‎Site of Community Importance‎" description="defined in the European Commission Habitats Directive (92/43/EEC) as a site which, in the biogeographical region or regions to which it belongs, contributes significantly to the maintenance or restoration at a favourable conservation status of a natural habitat type or of a species and may also contribute significantly to the coherence of Natura 2000, and/or contributes significantly to the maintenance of biological diversity within the biogeographic region or regions concerned." id="CM.otenuiflorum.7" wikipedia="Biogeographical"/>
    <entry term="carvacrol" url="/wiki/Carvacrol" wikidata="Q225543" name="‎carvacrol‎" description="chemical compound" id="CM.otenuiflorum.8" wikipedia="Carvacrol"/>
    <entry term="caryophyllene" url="/wiki/Caryophyllene" wikidata="Q421614" name="‎caryophyllene‎" description="chemical compound" id="CM.otenuiflorum.9" wikipedia="Caryophyllene"/>
 FP*<entry term="Central University of Punjab" url="/wiki/Central_University_of_Punjab" wikidata="Q5061963" name="‎Central University of Punjab‎" description="University in Bathinda, Punjab, India" id="CM.otenuiflorum.10" wikipedia="Central_University_of_Punjab"/>

```

# 3. Creating from Wikipedia lists.

Many Wikipedia pages have lists of links to related pages. There are 3 main types:
* Pages with HTML lists (typically for genus, with species children)
* Pages with a table of links.
* Categories

## Html lists
Many pages, especialy for a *genus* of plants, contain a list of related items, here *species*. E.g.

![Ocimum page](../dictionaries/ocimumgenus.png)

![Ocimum page](https://github.com/petermr/tigr2ess/blob/master/dictionaries/ocimumgenus.png)










