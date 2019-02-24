#! /bin/sh
# cleans cproject
# leaves EPMC metadata , */fulltext.xml

# HTML from XML
rm */scholarly.html
# per-tree results
rm */*.snippets.xml
rm */*.count.xml
rm -rf */results
# cooccurrence
rm -rf __cooccurrence/
# summary tables
rm commonest.dataTables.html count.dataTables.html entries.dataTables.html full.dataTables.html rawTree.txt word.frequencies.*
