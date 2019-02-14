# ami analysis

Using `getpapers`, we retrieved 100 papers for wheat in xml format, and stored them in `wheat_xml` directory.

## ami-search-cooccur (on default ami dictionaries)

We issue the command `ami-search-cooccur` to run search and co-occurence on `  wheat_xml` project with the dictionaries for  `plantparts`and `drugs`. The exact command entered at the terminal is:
```
`ami-search-cooccur   wheat_xml/ species gene plantparts drugs monoterpene`
```


The output on the terminal is huge. The above command creats a number of files inside the `  wheat_xml` directory. We are going to explore some of them. Let's begin with `commonest.dataTabales.html`.

### commonest.dataTables.html
The file looks as below:

![commonest.dataTables.html](https://github.com/petermr/tigr2ess/blob/master/crops/wheat/commonest.dataTable.png)

*The first column of the table contains PMC id's for the papers. The columns represent the dictionares. Each cell in the table contains the most common term present in a paper for a particular dictionary, and for some dictionaries the count for the commonest term is also prsent.*  **Confirmation_required_on_this_line**

Let's try to answer a few questions based on the above table:

Ques1. Which is the most prevelant `species` present in the papers?   
Ans1.  Since the wheat group contains a number of different species, we can't reach to the conclusion regarding maximum studied species based only on visual inspection of the above table. But still we can see that `Tritium` genus is quite prevelant. 

Ques2.  Which are the most commonly studied parts of the plant?   
Ans2.  Here, we can see that `seed` is the most studied plant_part.


#More to be added.....



