
# Initial search
Let's search for 'millet' on the web. In the search results, we get the following wikipedia page:

![Wikipedia page for millet](./millets_wikipage.png)

# Dictionary creation from terms

**TODO**

# Dictionary creation from wikipedia page
The above wiki page contains words/terms coloured in blue. If we click on a term, we will be directed to the wikipedia page for that term.
**GOAL**: Collect all these terms in a file.    

To do so, we issue the command `ami-dictionaries` with some options. The command is:
```
ami-dictionaries create\
 --hreftext \
 --input https://en.wikipedia.org/wiki/Millet\
 --informat wikipage\
 --dictionary millets_wikipage \
 --outformats xml,json,html \
 --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```
Or we can issue the above command in one line as:
```
ami-dictionaries create --hreftext --input https://en.wikipedia.org/wiki/Millet --informat wikipage --dictionary millets_wikipage --outformats xml,json,html --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```
**TODO** Describe the options passed above    
**TODO**: Check what happens to the terms present at the end of the page    
**Note**: The order in which options are passed to `ami-dictionaries` is irrelevant.

**Time**: It took around 3.5 minutes for the execution of above command.  
**Size**: The combined size of the three output files (which are *millets_wikipage.html*, *millets_wikipage.json* and *millets_wikipage.xml*) is ~200KB

## Let's have a look at the three output files:
 
### millets_wikipage.xml
1. The title of the dictionary is millets_wikipage as specified by line no.2 `<dictionary title="millets_wikipage">`
2. The total number of terms is 201 with ids running from "CM.millets_wikipage.0" to "CM.millets_wikipage.200".
3. The order in which terms are listed in the file is not same as they occur in the wikipedia page. Instead, they are sorted lexicographically.
4. The first two terms in the file correspond to the booksources present in the *Notes* section of the page. Obviously this information is not useful for us. Also, there are duplicates present such as (carbohydrates, Carbohydrates).

Let's edit out the terms not relevant to millets. This is very much subjective.
The first two terms are not at all relevant, so we remove the below corresponding lines from *millets_wikipage.xml* file.
```
<entry term="92-5-103861-9" name="92-5-103861-9" url="/wiki/Special:BookSources/92-5-103861-9" id="CM.millets_wikipage.0" wikipedia="Special:BookSources/92-5-103861-9"/>
 <entry term="978-0-19-533263-6" name="978-0-19-533263-6" url="/wiki/Special:BookSources/978-0-19-533263-6" id="CM.millets_wikipage.1" wikipedia="Special:BookSources/978-0-19-533263-6"/>
```
Similarly, we remove lines for the following terms:
**TODO** Add some examples lines here  
**For_the_moment**: There seem to be too many false positive terms in *millets_wikipage.xml*, let's move to other method for dictionary creation.  

# Dictionary creation from wikipedia category page
The wikipedia category page for millets is at [https://en.wikipedia.org/wiki/Category:Millets](https://en.wikipedia.org/wiki/Category:Millets). And it looks as below:

![millets_wikipedia_category_page](millets_wikicategory_page.png).

We issue the following command at the terminal:
```
ami-dictionaries create\
 --hreftext \
     --input  https://en.wikipedia.org/wiki/Category:Millets \
     --informat  wikicategory \
     --dictionary millets_category\
     --outformats  xml,json,html \
     --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```

Or in one line as the following:
```
ami-dictionaries create --hreftext --input https://en.wikipedia.org/wiki/Category:Millets --informat wikicategory --dictionary millets_category --outformats  xml,json,html --directory /home/amit/Desktop/Workshop/Github/tigr2ess/millets/dictionary
```

**Time**: The above took ~25sec.    
**Size**: The total size of three output files is ~35KB.      

The output on the terminal for the above command is huge. The end portion of it looks as below:
```
................
..........................
termCol       null
terms         null
0    [main] DEBUG org.contentmine.ami.lookups.WikipediaDictionary  - failed to find header
35   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - CAT
36   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - TERMS [Eleusine coracana, Millet, Chatang, Digitaria exilis, Echinochloa, Echinochloa caudata, Echinochloa colona, Echinochloa crus-galli, Echinochloa esculenta, Echinochloa frumentacea, Echinochloa stagnina, Fonio, Foxtail millet, Japanese millet, Kibi dango (millet dumpling), Millet beer, Millet red leaf virus, Millet wine, Panicum antidotale, Panicum sumatrense, Paspalum scrobiculatum, Pearl millet, Pennisetum glaucum, Proso millet, Setaria italica, Tongba]
>CM.millets_category.0>CM.millets_category.1>CM.millets_category.2>CM.millets_category.3>CM.millets_category.4>CM.millets_category.5>CM.millets_category.6>CM.millets_category.7>CM.millets_category.8>CM.millets_category.9>CM.millets_category.10>CM.millets_category.11>CM.millets_category.12>CM.millets_category.13>CM.millets_category.14>CM.millets_category.15>CM.millets_category.16>CM.millets_category.17>CM.millets_category.18>CM.millets_category.19>CM.millets_category.20>CM.millets_category.21>CM.millets_category.22>CM.millets_category.23>CM.millets_category.24>CM.millets_category.2541   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_category.xml
41   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_category.xml
42   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_category.json
42   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_category.json
93   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing to /home/amit/ContentMine/dictionary/dictionaries/millets_category.html
93   [main] DEBUG org.contentmine.ami.tools.AMIDictionaryTool  - writing dictionary to /home/amit/ContentMine/dictionary/dictionaries/millets_category.html
++++++++++++++++++++++++++
``` 

## Let's look at the three output files
### millets_category.html
We can visually inspect the terms collected, and go to the linked webpages to see more about them.

### millets_category.json
There are total 26 terms collected.

On inspection, we find that most of them are related to millets, and mostly it's scientific names. It also includes the term 'Tongba', which is a millet-based alcoholic beverage found in Nepal. 
*Whether 'Panicum antidotale' is a millet species or not could not be confirmed?*

**MILLETS**: are a group of highly variable small-seeded grasses, widely grown around the world as cereal crops or grains for fodder and human food. The different species of millets are not necessarily closely related. *All are members of the family Poaceae (the grasses) but can belong to different tribes or even subfamilies* (From wikipedia page).
