# Problems

## mistyped command


Misspelt command. (Allowable commands are in `<release>/appassembler/bin` directory).
	
```
$ ami-serach
-bash: ami-serach: command not found
```
	

## mistyped argument

(This was old-style syntax. Now we require options with `-` or `--` syntax), By default we get the help.

```
$ ami-search-new ocimum
Unmatched argument: ocimum
Usage: <main class> [OPTIONS]
Description
===========
Options
=======
      --basename=<userBasename>
                            User's basename for outputfiles (e.g. foo/bar/<basename>.
                              png. By default this is computed by AMI. This allows
                              users to create their own variants, but they won't be
                              known by default to subsequentapplications
      --dictionary=<dictionaryList>...
                            symbolic names of dictionaries (likely to be obsoleted).
                              Good values are (country, disease, funders)
      --dictionarySuffix=<dictionarySuffix>
                            suffix for search dictionary
                              Default: xml
      --dictionaryTop=<dictionaryTopList>
                             local dictionary home directory
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
      --ignorePlugins=<ignorePluginList>...
                             list of plugins to skip (mainly for debugging)
                              Default: []
      --includebase=<includeBase>...
                            include child files of cTree (only works with --ctree).
                              Currently must be explicit or with trailing percent
                              for truncated glob.
      --includetree=<includeTrees>...
                            include only the CTrees in the list. (only works with
                              --cproject). Currently must be explicit but we'll add
                              globbing later.
      --log4j=<log4j> <log4j>
                            format: <classname> <level>; sets logging level of
                              class, e.g.
                             org.contentmine.ami.lookups.WikipediaDictionary INFO
      --logfile=<logfile>   log file for each tree/file/image analyzed.
      --rawfiletypes=<rawFileFormats>[,<rawFileFormats>...]...
                            suffixes of included files (html, pdf, xml): can be
                              concatenated with commas
  -h, --help                Show this help message and exit.
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

Generic values (AMISearchTool)
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

Specific values (AMISearchTool)
================================
dictionaryList       null
dictionaryTop        null
dictionarySuffix     [xml]
ignorePlugins        []

>ERROR: requires cProject

```
## non-existent project

Command references non-existsnt project. This is often misspelt or not a child directory of current directory.
(Note error message stack trace may by tidied and change).

```
$ ami-search-new -p osimum

Generic values (AMISearchTool)
================================
cProject must be existing directory or have directory parent: osimum(/Users/pm286/workspace/tigr2ess/osimum
basename            null
cproject            /Users/pm286/workspace/tigr2ess/osimum
ctree               
cTreeList           []
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

Specific values (AMISearchTool)
================================
dictionaryList       null
dictionaryTop        null
dictionarySuffix     [xml]
ignorePlugins        []

cProject: osimum
0    [main] DEBUG org.contentmine.ami.plugins.CommandProcessor  - running NORMA -i fulltext.xml -o scholarly.html --transform nlm2html --project osimum
98   [main] WARN  org.contentmine.norma.NormaArgProcessor  - No current CTree

running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]cannot run command: word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]; null

create data tables
Exception in thread "main" java.lang.NullPointerException
	at org.contentmine.ami.AMIProcessor.defaultAnalyzeCooccurrence(AMIProcessor.java:99)
	at org.contentmine.ami.tools.AMISearchTool.runSearch(AMISearchTool.java:104)
	at org.contentmine.ami.tools.AMISearchTool.processProject(AMISearchTool.java:94)
	at org.contentmine.ami.tools.AMISearchTool.runSpecifics(AMISearchTool.java:88)
	at org.contentmine.ami.tools.AbstractAMITool.runCommands(AbstractAMITool.java:218)
	at org.contentmine.ami.tools.AMISearchTool.main(AMISearchTool.java:70)
```