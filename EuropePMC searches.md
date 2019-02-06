# Europe PMC search

This describes how to use EuropePMC (http://europepmc.org) as a web-based search engine.
### *overview*
*EuropePMC has other features than search (e.g. author manuscript upload) and there is a lot of emphasis on authors, grants, etc. The full documentation is in http://europepmc.org/Help but this is long. Later we suggest aome of the more important sections:*

## basic search

The basic search (at URL above) takes free text:
```
wheat
```
and (on 20190206) gives:
```
Results
1 - 25 of 159993 results  RSS Sort by: Relevance | Date  | Times Cited 1 2 3 4 5 ...  Next 
Select results 1 - 25 
From markers to genome-based breeding in wheat.
Rasheed A ,  Xia X  
Theor Appl Genet [23 Jan 2019]
parallel to projected wheat production demands. These advances have intrigued wheat researchers to practice ... ensuring sustainable wheat production through developing high yielding, climate-resilient wheat cultivars with
Cited: 0 times (PMID:30673804)
```
(*suggest replace by screen shot)*

## boolean queries
These provide a range of logical operators (AND, NOT, OR) - these are CASE-SENSITIVE. AND is the default, so
`wheat gluten` is the same as `wheat AND gluten`. Compound words/phrases must be quoted (e.g. "wheat flour"). Try this  out (numbers of hits will change daily):

### single words
No boolean operators
```
wheat
```
gives 159993 hits

### AND

```
wheat AND gluten
```
or
```
wheat gluten
```
gives 8911 hits

![EPMC boolean](https://github.com/petermr/tigr2ess/blob/master/epmc_wheat_query.png )

### OR
```
wheat OR gluten
```
gives 175163

### NOT
```
wheat NOT gluten
```
gives 151082 hits.
```
gluten NOT wheat
```
gives 15170 hits.

### XOR, NOR, NAND do not exist
Do NOT try to use these (I think they crash the system). If you need these operators you have to code them explicitly:
"Wheat or rice but not both" could be written as 
```
(wheat NOT rice) OR (rice NOT wheat)
```
gives 314757 hits as does:
```
(wheat OR rice) NOT (rice AND wheat)
```




### compound nouns
To search for "wheat gluten" (i.e. gluten from wheat) thw phrases must be quoted (this prevents the AND being implied).
```
"wheat gluten"
```
gives 2846 hits.
Note that this is order-specific - "gluten wheat" (i.e. wheats qualified by gluten) are fewer:
```
"gluten wheat"
```
gives 266 hits. 
Note also that false positives for compound nouns may occur:
```
Development of decreased-gluten wheat 
```
There is no easy way round this.

## advanced search
These are some of the tools, sections, annotations and concepts that will be useful for subject-based searches.
*NOTE: the advanced search for terms is not intuitive. Make sure you are competent before you try this. Also not that most of the functionality could be created manually. The advantage of the Query Builder is that brackets and quotes are likely to be correct. But I haven't managed to get some of the functionality to work*
### synonyms
I haven't got http://europepmc.org/Help#usesynonyms to work.

## Syntax
See: http://europepmc.org/Help#SSR.
There are a wide range of fields which will help narrow searches, and we'll select the most important.

1. Direct search (copied with thanks)
<div class="table-overflow">
<table>
<tbody>
<tr class="headerline">
<th style="width:180px">Search syntax</th>
<th>Result</th>
</tr>
<tr>
<td>J.Inorg. Biochem. 101:74-79(2007)</td>
<td>Quick search in common notation style, with journal + volume + pageInfo + pub year</td>
</tr>
<tr>
<td>microtubule glycosylated</td>
<td>Finds citations containing microtubule AND glycosylated (default behaviour)</td>
</tr>
<tr>
<td>microtubule OR glycosylated</td>
<td>Finds citations containing microtubule OR glycosylated. Note that "OR" is case sensitive.</td>
</tr>
<tr>
<td>(fish OR bird) AND disease</td>
<td>Finds citations containing either fish OR bird AND on top of that disease.</td>
</tr>
<tr>
<td>microtub* disease</td>
<td>Finds citations containing disease AND terms that start with microtub. Wildcard usage is limited and not allowed when resulting in too many clauses.</td>
</tr>
<tr>
<td>microtubule cardiac -toxicity</td>
<td>Finds citations containing microtubule AND cardiac but NOT toxicity</td>
</tr>
<tr>
<td>With quotes: "green grass"</td>
<td>"green grass" with quotes) results in a search for green grass as a sequence of two words. Bear in mind that when you use 'stop words' (such as 'a','and','in','if' etcetera) within a quoted phrase search then this may give less accurate results due to the nature of the indexing mechanism.</td>
</tr>
<tr>
<td>Without quotes: green grass</td>
<td>Using no quotes is always less strict, and will give back all citations where the words green and grass occur, not necessarily sequentially.</td>
</tr>
</tbody>
</table>
= = = == = 
Search syntax 	Result
J.Inorg. Biochem. 101:74-79(2007) 	Quick search in common notation style, with journal + volume + pageInfo + pub year
microtubule glycosylated 	Finds citations containing microtubule AND glycosylated (default behaviour)
microtubule OR glycosylated 	Finds citations containing microtubule OR glycosylated. Note that "OR" is case sensitive.
(fish OR bird) AND disease 	Finds citations containing either fish OR bird AND on top of that disease.
microtub* disease 	Finds citations containing disease AND terms that start with microtub. Wildcard usage is limited and not allowed when resulting in too many clauses.
microtubule cardiac -toxicity 	Finds citations containing microtubule AND cardiac but NOT toxicity
With quotes: "green grass" 	"green grass" with quotes) results in a search for green grass as a sequence of two words. Bear in mind that when you use 'stop words' (such as 'a','and','in','if' etcetera) within a quoted phrase search then this may give less accurate results due to the nature of the indexing mechanism.
Without quotes: green grass 	Using no quotes is always less strict, and will give back all citations where the words green and grass occur, not necessarily sequentially.


