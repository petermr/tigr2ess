# Installation and problems

This covers the installation and any problems relating to 
 * `getpapers`
 * `ami`

## installing 

## Java version
You will need Java 8 (aka Java 1.8) to run.
At your commandline type:
```
java -version
```
you should get 
```
java -version
java version "1.8.0_60"
Java(TM) SE Runtime Environment (build 1.8.0_60-b27)
Java HotSpot(TM) 64-Bit Server VM (build 25.60-b23, mixed mode)
```
Note the `1.8` version

### updating java 
*** ADD instructions here ***

## installation over unix, windows, macOSX
### [`unix`](https://github.com/petermr/tigr2ess/blob/master/installation/unixTALLATION.md)
### [`macOSX`](https://github.com/petermr/tigr2ess/blob/master/installation/mac/INSTALLATION.md)
### [`windows`](https://github.com/petermr/tigr2ess/blob/master/installation/windows/installation.md)

Full instructions for installation and use are given at ['getpapers'](http://github.com/contentmine/getpapers) page. 
In case of getting help, follow the documentation over there.


## problems
(AAV - please add general problems here)

### Issues
Please report issues on the [Tigr2ess repo](https://github.com/petermr/tigr2ess/issues):
```
https://github.com/petermr/tigr2ess/issues
```

Problems for specific machine types / OS should be added here:

 * [unix](unix/)
 All steps of installation and tool running goes well over unix machine. 
 * [mac](mac/)
 Make sure of pre-installation requirements over macOSX i.e XCode or Apple's developer environent - free from the mac App Store
the command-line developer tools.
 * [windows](windows/)
 environment variable PATH value should be set as small as possible. I kept all ami-jar contents i.e bin/, repo/ and mentioned dependencies into C:/ directory and exported the C:/bin from Advanced System Settings.


