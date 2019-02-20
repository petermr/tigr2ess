## Purpose of Tutorial

ami-search analysis

## Resources and software required

osanctum200 directory (it contains 200 papers related to osanctum), `ami-search-new`

## Instructions

*NOTE*: Specify current working directory for issuing below commands.

### COMMAND1
- Issue the following command (or copy-paste):
`ami-search-new -p ./ami20190219b/osanctum200/ --dictionary species`  
*Expected Time*: 2min  
*Output*:  
```
--------------------------
cProject: osanctum200

running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]............................................................
running: species; species([binomial])[]SP: ./ami20190219b/osanctum200............................................................
create data tables
rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr

```
- Open `full.dataTables.html` in a web-browser. It looks following: 

![full.dataTables.html](1_ami-search-new_species.png)  

### COMMAND2
- Issue the following command (or copy-paste):    
`ami-search-new -p ./ami20190219b/osanctum200/ --dictionary plantparts`    
*Expected Time*: 1.5min  
*Output*:  
```

cProject: osanctum200

running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]............................................................
running: search; search([plantparts])[]............................................................
create data tables
rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr

```
- Open `full.dataTables.html` in a web-browser. It looks following:  
 
![full.dataTables.html](3_ami-search-new_plantparts.png)  

### COMMAND3
- Issue the following command (or copy-paste):  
`ami-search-new -p ./ami20190219b/osanctum200/ --dictionary country`  
*Expected Time*: 1.5min  
*Output*:  
```

cProject: osanctum200

running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]............................................................
running: search; search([country])[]............................................................
create data tables
rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr

```
- Open `full.dataTables.html` in a web-browser. It looks following: 
 
![full.dataTables.html](5_ami-search-new-country.png)

### COOCCURENCE INTERPRETATION

- Go to `__cooccurrence` directory, then to `binomial-binomial` directory. Inside it, open `cooccur.svg` in a web-browser.

![cooccur.svg](7_binomial-binomial_cooccur_1.png)


### COMMAND4

- Issue the following command:  
`ami-search-new -p ./ami20190219b/osanctum200/ --dictionary species country`  
*Expected Time*: 2.5min  
*Output*:  
```

cProject: osanctum200

running: word; word([frequencies])[{xpath:@count>20}, {w.stopwords:pmcstop.txt stopwords.txt}]............................................................
running: species; species([binomial])[]SP: ./ami20190219b/osanctum200............................................................
running: search; search([country])[]............................................................
create data tables
rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
```

- Go to `__cooccurrence` directory, then to `binomial-binomial` directory. Inside it, open `cooccur.svg` in a web-browser.  

![cooccur.svg](8_binomial_country_cooccur_1.png)

*Interpretation*: `Ocimum Sanctum` occurs maximum with country `India`, followed by `China`. 


2. Browse Table of 500 entries and answer few questions:
*How many species do you find?
* Are different species of Ocimum being used in different countries? Give examples. 
* Which Ocimum species is most often used in the Indian context?
* What plant part of Ocimum is most important? [This should have max published literature]
** Think of MORE questions - [We need a Q-List ASAP]


3. Browse Co-Occurence Matrices for above Run to see the difference between manual and visual interpretation.
[This step allows realising how easily one is able to find direct answers to above questions - Using Co-Occ matrices.]
For example:
** O.sativum should directly match with India. [RUN & CONFIRM!]
** Ocimum should mostly show LEAF as most recurring part [RUN & CONFIRM!]]


4. Connect all Co-Occ Matrices and earlier HTML Table, to answer few more complex questions about the subject:
* Which Ocimum species is most used in Zaire? Why?
* Which Indian Organisation is Most active in Ocimum research? Why?
* Which plant part use of Ocimum is new to you - That you were you not aware of previously?
** Other Questions [WE NEED Q-LIST ASAP]


5. Discuss the Dictionaries that made all this auto-interpretation [via Tables and Matrices] possible from Papers:
[This brings out the value and Importance of Dictionaries.]
We MUST have hard coded dictionaries for the following BEFOREHAND to view them with group:
All Species Names
All Ocimum Species Names
All Country Names
All Plant Parts
All Indian Research Organisations
**Any other I've missed?

6. Discuss the Co-Oc Matrices and think about how we could improve the analyses if we had "better" Dictionaries.
This can be done in TWO ways:
* Increase the data in existing Dictionaries (We can open and modify any ONE Hard Coded dictionary using JSON editors - Lets Say PlantParts**)
* Make a New Dictionary - Lets say 'Uses/Activities' of Herbs (**WE NEED TO MAKE THIS BEFOREHAND )

