# Building AMI
We shall now cover this in the workshop, but if you want to...

## overview
AMI consists of two components:
* `cephis` - a library.
* `normami` - search and analysis routines.

You must build `cephis` first

## cephis

Location: https://github.com/petermr/cephis

* git Clone this repo
* compile with Maven. Suggest omitting the tests:
```
  mvn install -Dmaven.test.skip=true

```

## normami

Location: https://github.com/petermr/normami

* git Clone this repo
* compile with Maven. Suggest omitting the tests:
  ```
  mvn install -Dmaven.test.skip=true
  ```

## products
Various executables (`jar`, `deb`, etc.) are in `target` and scripts in `target/appassembler/bin` and repos in 
`target/appassembler/repo.

## committing jars for workshop

The jar files are managed by `normami/ami-jars.sh` . This should be edietd to reflec the (new) version number. To upload:
```
cd normami
source ami-jars.sh


