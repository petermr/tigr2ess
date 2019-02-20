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
* ***It doesn't run properly/ crashes my machine / hang indefinitely/ etc ***. Please run the tests supplied in the `tigr2ess/` directory.
If they fail, we'd like to know. If they pass, then the problem may be in your data or our input. Always report the machine output
including your command
* ***I don't get the answers I expected***. Again, check you can run the tests OK. If so then either your input causes a problem or 
there's a bug or your expectations aren't met. Typical problems are mistyping queries, data not present in EPMC, etc.

## I get 2198564 hits on EPMC
Sometimes incorrect query syntax seems to dump the whole database. Save the query and post it to EPMC as a bug.

## `ami-search` takes **ages**
Some papers are very large (500 + pp.). Many of these are filled with thousands or even more species. This can take 100 times  a normal 
search. We've put in a limit to truncate at 500 paragraphs (not yet settable, sorry). Some actions (e.g. Wikidata lookups) use the web and 
take connection time.


