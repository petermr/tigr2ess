# Frequently asked questions

## where do I get the software and data?
For the Delhi workshop all software is an memory sticks. Later it is on:
* http://github.com/ContentMine/getpapers
* http://github.com/petermr/tigr2ess

## Can I use the software and corpora after the workshop?
Yes, everything is Open (either CC BY or Apache 2). Please acknowledge us if you can.

## The software doesn't work
There are many reasons for this, so please try to debug/diagnose for us:
* ***I can't install the software on my machine***. We have supported MAC-OSX 10, Unix/Debian /Ubuntu and 
Windows 8 or 10 running (a) Node (b) Java 8. If you can't install these we can't generally help - there is lots online 
(Node versions matter).
* ***It doesn't run properly/ crashes my machine / hang indefinitely/ etc.***. Please run the tests supplied in the `tigr2ess/` directory.
If they fail, we'd like to know. If they pass, then the problem may be in your data or our input. Always report the machine output
including your command
* ***I don't get the answers I expected***. Again, check you can run the tests OK. If so then either your input causes a problem or 
there's a bug or your expectations aren't met. Typical problems are mistyping queries, data not present in EPMC, etc.

## I get 2198564 hits on EPMC
Incorrect syntax can sometimes cause this; so can zero hits.

Try to replicate the error on EuropePMC.org search. If it persists save the query and post it to EPMC as a bug. If it works on EPMC but not `getpapers` it may be due to incorrect brackets. The safe format has brackets round the whole query and each Booelan component:
```
-q "((holy basil) OR (tulsi) OR (Ocimum sanctum))"
```


## `ami-search` takes **ages**
Some papers are very large (500 + pp.). Many of these are filled with thousands or even more species. This can take 100 times  a normal 
search. We've put in a limit to truncate at 500 paragraphs (not yet settable, sorry). Some actions (e.g. Wikidata lookups) use the web and 
take connection time.

## Article with pmcid "PMC5125159" was not Open Access (therefore no XML)
When searching for Open access the EPMC system seems to select a few articles which are not actually OA. We should collect a clear susbet and report this to EPMC.

## java.lang.OutOfMemoryErrorOutOfMemoryError: GC overhead limit exceeded
An `OutOfMemoryError` relates to working memory, not disk space.
is sometimes due to not having set the lmits large enough on the commandline, but also due to programming style
where many objects are held in memory.

If it happens on small problems, try setting the VM limits higher. If it occurs on large data sets or files, capture as much info as possible and post as an issue.

Typical output:
```
java.lang.OutOfMemoryError: GC overhead limit exceeded
... 30 lines snipped ...
  ... useful to give the routines which are calling the failing modules ...
	at org.contentmine.ami.plugins.word.WordPluginOption.run(WordPluginOption.java:39)
```
This is unlikely to occur in the same place each time so stack traces are of marginal value.

## how can I build the AMI system?
We are not going to cover this in the workshop - please use the precompiled jar. However the [building instructions are here](BUILDING_AMI.md).


