# Installation of ContentMine TDM softwares over macOSX


## prerequisites: developer tools

If you're on macOS/OSX, you'll need to install either:

- XCode, Apple's developer environent, free from the mac App Store
- the command-line developer tools.
## installing nvm

Open a terminal and run this command:

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


Full instructions for installation and use are given at http://github.com/contentmine/getpapers page. Please download and insta

