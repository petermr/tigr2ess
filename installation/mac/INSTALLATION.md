# Installation of ContentMine TDM softwares over MAC OSX

## Prerequisites for MAC OSX: 
1. Developer tools
If you're on macOS/OSX, you'll need to install:
   - XCode, Apple's developer environent (FREE on App Store) OR The command-line developer tools.

      - Install <a href= https://developer.apple.com/xcode/>Xcode</a> from the App store or the Apple developer website.
      - For installing Xcode command line tools run the command
         <code>xcode-select --install</code>
      - It'll prompt you to install the command line tools. 
      - Follow the instructions and now you have Xcode and Xcode command            line tools both installed and running.
      - Also install <a href=https://www.xquartz.org/>XQuartz</a> for X11 server and client libraries for OS X Mountain Lion.

2. The Latest Java versions of JDK and JRE
      - Download and Install the latest JDK for your OS from <a href=https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>here</a>
      - Check your JAva Installation <a href=https://www.java.com/en/download/help/version_manual.xml>here</a>
      - Open a Terminal and type <code>java -version</code>
      - Make sure you have the latest version (At the time of writing: We have 1.8_201)

## Installing Node 

Make sure you have sudo (admin) rights on your machine. 

   - Download and Install Node from the <a href=https://nodejs.org/en/download/>NodeJS website</a>.  
   
### Check Installation of Node: 

   - Open a Terminal and type <code> node</code>
   - If all is good, you will get a cursor within the newly Launched Node, as shown below.
        
        <img src=/installation/mac/node1.png>
   - Exit Node by typing <code>.exit</code> at the cursor, as shown above.
  
  ## Installing getpapers 
  
  - Open a Terminal
  - Type <code>npm install --global getpapers</code> and press Return.
  - The above command, if all goes well, should reveal getpapers being installed and a final message that all went well:
   
   <img src=/installation/mac/getpapers.png>getpapers>
   
   ### Check Installation of getpapers
   - Open a Terminal
   - Type <code>getpapers</code> and press Return.
   - This should return the help for getpapers:
      
   <img src=/installation/mac/getpapers1.png>
   
## Installation of AMI

- Make a distinct Installation Folder (directory containing the package).
   
> mkdir AMI

- Get the ami software package (clone ami repository into your area or directory).  

> git clone https://github.com/petermr/ami-jars.git

- Set environment variable to access ami plugins (tools)

    - First, Find your "Absolute Path": Type <code>pwd</code> on your terminal
    - The newly Cloned ami repository contains .jars and ami plugins/tools. 
    - Type <code>cd ./ami-jars/ami20190115/bin/ </code>  
    - Type <code>pwd</code>  
    - This is where All ami tools are contained.
    - Replace the absolute path you got earlier for <code>absolute-path</code> in the following command:

> export PATH=$PATH:/absolute-path/ami-jar/ami20190115/bin/

- Check your path:

> echo $PATH

- The above Command should return full path of bin directory containing ami plugins/tools.

### Check Installation of ami

 - Type <code>ami-pdf</code> on your terminal

   - If exported or installed correctly, this will list out a long help and usage information.
   - If you get errors, please contact a helper.
   
   <img src=/installation/mac/ami1.png>

* Full instructions for installation and use <a href=http://github.com/contentmine/getpapers>here</a>

