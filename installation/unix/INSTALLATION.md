# Installation hints

## Getpapapers installation over Linux.

- step 1: Installing nvm  

> crl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

Make sure of curl installation. (sudo apt-get install curl).

or

> wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

- step 2: Installing node

Type following commands on to your terminal.

> nvm install 7

> nvm use 7

> nvm alias default 7

Check for the version of installed node.

> node -v

Before using the node, go to enable it. Run the following command over the terminal.

> nvm on

> nvm use 7

If it ask for another version of node apart from 7.0.0. Go for running following command.

> nvm use 7.x.x 

(7.x.x - installed version of node) 

- step 3: installing a node tool.

> npm install --global getpapers

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



