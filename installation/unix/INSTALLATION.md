# Installation hints

## The Latest Java versions of JDK and JRE

   - Download and Install the latest JDK for your OS from <a href=https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>here</a>
   - Check your JAva Installation <a href=https://www.java.com/en/download/help/version_manual.xml>here</a>
   - Open a Terminal and type <code>java -version</code>
   - Make sure you have the latest version (At the time of writing: We have 1.8_201)

## `nvm`, `node`, and node-tool - `getpapapers` installation over Linux.

- step 1: Installing nvm  

>crl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

Make sure of curl installation. (sudo apt-get install curl).

or

>wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

- step 2: Installing node

Type following commands on to your terminal.

>nvm install 7

Check for the version of installed node.

Enable nvm to use installed node. Run the following command.
 
>node -v
 
>nvm on

>nvm use 7.x.x

>nvm alias default 7

(7.x.x - installed version of node) 

- step 3: installing a node tool.

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


Full instructions for installation and use are given at http://github.com/contentmine/getpapers page. Please download and install.



