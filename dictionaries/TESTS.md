# Testing

*These scripts will test if `ami-dictionary` is running properly*

## tests
### test1.sh

## running
```
cd <myworkspace>/tigr2ess/dictionary/test
source test1.sh
source test2.sh

### COMMAND1

---
```
 ami-dictionary create --terms thymol pineol menthol --dictionary myterpenes --directory mydictionaries --outformats xml,html
```
---


### COMMAND2
---
```
ami-dictionary create --informat wikipage --input https://en.wikipedia.org/wiki/Ocimum --dictionary ocimum--directory mydictionaries --outformats xml,html
```
---

