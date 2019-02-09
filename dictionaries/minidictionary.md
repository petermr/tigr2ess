# Dictionaries

## structure

Dictionaries can be expressed either in XML or JSON. We shall use JSON as it is more familiar in bioscience. The dictionaries consist of:

* a header, with title, comments and identifier
* a list of entries

## example
A small dictionary relating to the TIGR2ESS project - this shows most of what is required. 
Don't worry about the syntax - view this in an editor.

```
{
  "id": "CM.tigr2ess",
  "description": "terms from the TIGR2ESS program 2018",
  "entries": [
    {
      "name": "University of Cambridge (UK)",
      "term": "University of Cambridge",
      "identifiers": {
        "contentmine": "CM.tigr2ess0",
        "wikidata": "Q35794"
      },
      "searchTerms": [
        "Cambridge University",
        "Cantab"
      ],
      "wikipedia": "https://en.wikipedia.org/wiki/University_of_Cambridge"
    },
    {
      "name": "National Institute of Plant Genome Research",
      "term": "National Institute of Plant Genome Research",
      "identifiers": {
        "contentmine": "CM.tigr2ess1",
        "wikidata": "Q4294472"
      },
      "searchTerms": [
        "NIPGR"
      ],
      "wikipedia": "https://en.wikipedia.org/wiki/Ministry_of_Science_and_Technology_(India)"
    }
  ]
}
```

### interpretation

An [alternative view](jsoneditor.png) is given by a JSON Editor (this is https://jsoneditoronline.org/) 

