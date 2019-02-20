# Installation and problems

This covers the installation and any problems relating to 
 * `getpapers`
 * `ami`

## Installation Pre-requistes 

## JAVA
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

### If you do not have JAVA 8, PLEASE UPDATE JAVA 

## Detailed Step by Step Installation over UNIX, WINDOWS & macOSX
### For UNIX, Click <a href=/installation/unix/INSTALLATION.md>Here</a>
### [`macOSX`](https://github.com/petermr/tigr2ess/blob/master/installation/mac/INSTALLATION.md)
### [`windows`](https://github.com/petermr/tigr2ess/blob/master/installation/windows/installation.md)

Full instructions for installation and use are given at ['getpapers'](http://github.com/contentmine/getpapers) page. 
In case of getting help, follow the documentation over there.


## problems
(AAV - please add general problems here)
### 32 vs 64 bit 
Amit has filed a bug and fix on Github:
https://github.com/petermr/tigr2ess/issues/51

If you have this bug, please READ THE ISSUE
```
amit yadav <notifications@github.com>
	
3:45 PM (34 minutes ago)
	
to petermr/tigr2ess, Subscribed

Operating System: Windows 7 (32 bit)

The installation steps were followed from contentmine/getpapers, which in turn refers to blahah/installing-node-tools for the initial steps.

Step 1: Installing nodeJS. From the downloads page, the latest version nvm-setup.zip is downloaded. The latest version is 1.1.7. The file is uzipped and the included installer is run. This step runs smoothly.

Step 2: Installing node. This is done by running nvm install 7. The output for this is:

C:\Users\amit>nvm install 7
Downloading node.js version 7.10.1 (64-bit)...
Complete
Creating C:\Users\gold\Desktop\nvm\temp

Downloading npm version 4.2.0... Complete
Installing npm v4.2.0...

Installation complete. If you want to use this version, type

nvm use 7.10.1

Note Above it says: Downloading node.js version 7.10.1 (64-bit)..., so it means it's not able to figure out it's a 32-bit machine.

Step3: Next, we issue the command nvm use 7.10.1, and it runs smoothly.
Step4: Installing getpapers. We issue the command npm install --global getpapers, and the following error message is produced.

:npm install --global getpapers
This version of C:\Program Files\nodejs\node.exe is not compatible with the version of Windows you're running. Check your computer's system information to see whether you need a x86 (32-bit) or x64 (64-bit) version of the program, and then contact the software publisher.
This version of C:\Program Files\nodejs\node.exe is not compatible with the version of Windows you're running. Check your computer's system information to see whether you need a x86 (32-bit) or x64 (64-bit) version of the program, and then contact the software publisher.

As it is evident from above Note, we have installed npm for 64-bit machine, whereas our machine is 32-bit. Fortunately, nvm allows us to specify whether we wan't to install npm for 32-bit or 64-bit. Among a few possibilites, the command nvm install 7 32 works. So in step2, we issue the command nvm install 7 32 instead of nvm install 7. Here is how the output message looks:

:nvm install 7 32
Downloading node.js version 7.10.1 (32-bit)...
Complete
Creating C:\Users\gold\Desktop\nvm\temp

Downloading npm version 4.2.0... Complete
Installing npm v4.2.0...

Installation complete. If you want to use this version, type

nvm use 7.10.1

This also affects Step3, where we issue the command nvm use 7.10.1 32 instead of nvm use 7.10.1.

After the above changes, the command npm install --global getpapers successfully installs getpapers on the system.
```
### Issues
Please report issues on the [Tigr2ess repo](

Problems for specific machine types / OS should be added here:

 * [unix](unix/)
 All steps of installation and tool running goes well over unix machine. 
 * [mac](mac/)
 Make sure of pre-installation requirements over macOSX i.e XCode or Apple's developer environent - free from the mac App Store
the command-line developer tools.
 * [windows](windows/)
 environment variable PATH value should be set as small as possible. I kept all ami-jar contents i.e bin/, repo/ and mentioned dependencies into C:/ directory and exported the C:/bin from Advanced System Settings.


