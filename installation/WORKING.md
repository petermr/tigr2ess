# Working practices

Most of your work will use files from the `tigr2ess` directory, and a bit from `dictionaries`. Your results will normally go in `tigr2ess`

## outputs

Use:
* `mydictionaries/` for any dictionaries you create.
* `results` for any results.
* `crops/*` for your crop project

## AMI

### cleaning AMI
You may wish to clean an AMI corpus and start again, but not to delete the files you downloaded. You can do this with (the rather verbose) commands:
```
		ami-clean -p  osanctume200 --dir results __cooccurrence
```
which cleans the toplevel files and
```
ami-clean -p osanctum200 \
			 --file \
			 gene.human.count.xml\
		     gene.human.snippets.xml\
		     search.country.count.xml\
		     search.country.snippets.xml\
		     search.disease.count.xml\
		     search.disease.snippets.xml\
		     search.diterpene.count.xml\
		     search.diterpene.snippets.xml\
		     search.drugs.count.xml\
		     search.drugs.snippets.xml\
		     search.monoterpene.count.xml\
		     search.monoterpene.snippets.xml\
		     search.monoterpenes.count.xml\
		     search.monoterpenes.snippets.xml\
		     search.plantparts.count.xml\
		     search.plantparts.snippets.xml\
		     search.spices.count.xml\
		     search.spices.snippets.xml\
		     species.binomial.count.xml\
		     species.binomial.snippets.xml\
		     word.frequencies.count.xml\
		     word.frequencies.snippets.xml
```
which deletes specified children of each CTree. We hope to create a simpler approach before the workshop.
