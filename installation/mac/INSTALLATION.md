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
   - Alternativel;y, you can also do this manually on a terminal. Run this command:

      - curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

         If it fails because you don't have curl installed, try using wget instead:

      - wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

      Follow the instructions that appear in the terminal - it will ask you to close the terminal once it's done.

      - installing node

      After you've closed and re-opened your terminal, you'll need to tell nvm to install the latest version of Node, and set it as default:

      >nvm install 7

      Check for the installed node version and enable nvm to use installed node. Run following command over terminal.

      >nvm on

      >nvm use 7.x.x

      (7.x.x is the installed version of the node)

      >nvm alias default 7.x.x       
- installing a node tool (getpapers):
>npm install --global some-node-tool

e.g - getpapers should be passed-on in place of some-node-tool.

>npm install --global getpapers

## Installation of ami plugins/tools

- Make your own installation area (directory containing the package).
   
> mkdir AMI

- Get the ami software package (clone ami repository into your area or directory).  

> git clone https://github.com/petermr/ami-jars.git

- Set environmental variable to access the ami plugins (tools)

Cloned repository contains .jars and ami plugins/tools. Get into either of the directory ../ami-jar/ami20190115/bin/ or 
../ami-jar/ami20190211/bin/ folder. All ami tools are contained into it. Set the absolute path of the bin directory to environment variable.

> export PATH=$PATH:/absolute path/ami-jar/ami20190115/bin/


- Check for the set path.

> echo $PATH

Command will return absolute path of bin directory containing ami plugins/tools.

- Check for the installation.

> ami-search-cooccur

If exported or installed correctly. It will list out all tool help and usage information.


Full instructions for installation and use are given at http://github.com/contentmine/getpapers page. 

