
# Initial search
Let's search for 'millet' on the web. In the searh results, we get the following wikipedia page:

![Wikipedia page for millet]
(/home/amit/Desktop/Workshop/Github/tigr2ess/millets/Screenshot from 2019-02-07 13-23-38.png)

**EDIT You will have to commit the PNG to Github and then use a relative URL (absolute URLs to github may run into `blob` problems).**

# Dictionary creation from wikipedia page
This page contains words/terms coloured in blue. If we click on a term, we will be directed to the wikipedia page for that term.
**GOAL**: Collect all these terms in a file.

To do so, we issue the command `ami-dictionaries` with some options. The command is:
```
ami-dictionaries create\
 --hreftext \
 --input https://en.wikipedia.org/wiki/Millet\
 --informat wikipage\
 --dictionary millets_wikipage \
 --outformats xml,json,html
 --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```
The exact command entered is: (*This is for copy-paste*)
```
ami-dictionaries create --hreftext --input https://en.wikipedia.org/wiki/Millet --informat wikipage --dictionary millets_wikipage --outformats xml,json,html --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```
**TODO** Describe the options passed above
**TODO**: Check what happens to the terms present at the end of the page
**Error**: The above command creates xml, json and html files in the */home/amit/ContentMine/dictionary/dictionaries* directory, instead of the expected */home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary* directory.
The end portion of the output is:
```
.............
...................
>CM.millets_wikipage.186>CM.millets_wikipage.187>CM.millets_wikipage.188>CM.millets_wikipage.189>CM.millets_wikipage.190>CM.millets_wikipage.191>CM.millets_wikipage.192>CM.millets_wikipage.193>CM.millets_wikipage.194>CM.millets_wikipage.195>CM.millets_wikipage.196>CM.millets_wikipage.197>CM.millets_wikipage.198>CM.millets_wikipage.199>CM.millets_wikipage.2001283 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.xml
1284 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.xml
1287 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.json
1287 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.json
1341 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.html
1341 [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_wikipage.html
+2679 [main] ERROR org.contentmine.ami.dictionary.DefaultAMIDictionary  - Cannot read pageInfo
+3723 [main] ERROR org.contentmine.ami.dictionary.DefaultAMIDictionary  - Cannot read pageInfo
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
```


**Remark**: The output generated at the terminal by the above command is huge. This will be coginitively overloading for the delegates. I checked the verbose option of the command, and this is the minimum output we will get at the terminal. Is there a way out for this?  
**Note**: The order in which options are passed to `ami-dictionaries` is irrelevant, based on my limited testing. *I would require confirmatin on this.*

**Time**: It took around 3.5 minutes for execution of above command
**Size**: The combined size of the three output files (which are millets_wikipage.html, millets_wikipage.json and millets_wikipage.xml) is ~200KB

## Let's have a look at the three output files:
 
### millets_wikipage.json
1. The title of the dictionary is millets_wikipage as specified by line no.2 `<dictionary title="millets_wikipage">`
2. The total number of terms is 201 with ids running from "CM.millets_wikipage.0" to "CM.millets_wikipage.200".
3. The order in which terms are listed in the file is not same as they occur in the wikipedia page. Instead, they are sorted lexicographically.
4. The first two terms in the file correspond to the booksources present in the *Notes* section of the page. Obviously this information is not useful for us. Also, there are duplicates present such as (carbohydrates, Carbohydrates).








