# Installation and problems

This covers the installation and any problems relating to 
 * `getpapers`
 * `ami`

## installing 
(Ambarish - please add instructions here)
## installation over unix, windows, macOSX
### unix
#### Installation hints

##### getpapapers installation over unix.

Pre-requisites are installation of node and node virtual manager.

###### installing nvm, node and node tool (`getpapers`).

- step 1: Installing `nvm` 

>crl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

Make sure of curl installation. (sudo apt-get install `curl`).

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

- step 3: installing a node tool (`getpapers`).

>npm install --global getpapers

##### Installation of ami plugins/tools

- Make your own installation area (directory containing the package).
   
> mkdir AMI

- Get the ami software package (clone ami repository into your area or directory).  

> git clone https://github.com/petermr/ami-jars.git

- Set environmental variable to access the ami plugins (tools)

Cloned repository contains .jars and ami plugins/tools. Get into either of the directory ../ami-jar/ami20190212a/bin/ or 
../ami-jar/ami20190212a/bin/ folder. All ami tools are contained into it. Set the absolute path of the bin directory to environment variable.

> export PATH=$PATH:/absolute path/ami-jar/ami20190115/bin/


- Check for the set path.

> echo $PATH

Command will return absolute path of bin directory containing ami plugins/tools.

- Check for the installation.

> ami-search-cooccur 

If exported or installed correctly. It will list out all tool help and usage information.


Full instructions for installation and use are given at [`getpapers`](http://github.com/contentmine/getpapers) page. Please download and install.

### windows

#### nvm-windows (Node virtual manager for Windows)

- Access the page and download the [`nvm-setup.zip`](https://github.com/coreybutler/nvm-windows/releases) latest version of the setup.

Unzip the downloaded file and run the included installer.

Run following commands over windows command-prompt.

> nvm install 7

- Check for the installed node version and enable `nvm` to use installed node. Run the following command.

>nvm on

>nvm use 7.x.x

(7.x.x is the installed version of the node)


#### installing a node tool (`getpaper`)

> npm install --global getpapers

- Set environment variables to access installed getpapers tools.

For example on my laptop it is installed into following directory.
C:\Users\hadoop_pc\AppData\Roaming\npm


### AMI tool installation over windows - 8 and 10

- Make your own installation area (directory containing the package).

> mkdir AMI
  
- Get the ami software package into the directory.     

- Set environment variable to access the bin directory (containing ami plugins or tools) of software package.  

- To set environment variable in Windows - 08.
  ```
       - From the desktop, right click the Start menu.
       - Choose System from the context menu.
       - Click the Advanced system settings link.
       - Click new option into user variables for desktop.
       - Set variable name (environment variable name) and value (absolute path value).
       
  ```

- Check for the installation.
              
> ami-search-cooccur

If exported or installed correctly. It will list out all tool help and usage information.

### macOSX


#### prerequisites: developer tools

If you're on macOS/OSX, you'll need to install either:

- XCode, Apple's developer environent, free from the mac App Store
- the command-line developer tools.
#### installing nvm, node and node tool (`getpapers`)

Open a terminal and run this command:

- curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

If it fails because you don't have `curl` installed, try using wget instead:

- wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

Follow the instructions that appear in the terminal - it will ask you to close the terminal once it's done.

- installing node

After you've closed and re-opened your terminal, you'll need to tell nvm to install the latest version of `Node`, and set it as default:

>nvm install 7

Check for the installed node version and enable `nvm` to use installed node. Run following command over terminal.

>nvm on

>nvm use 7.x.x

(7.x.x is the installed version of the node)

>nvm alias default 7.x.x

- installing a node tool (`getpapers`):

>npm install --global some-node-tool

e.g - getpapers should be passed-on in place of some-node-tool.

>npm install --global getpapers

#### Installation of ami plugins/tools

- Make your own installation area (directory containing the package).
   
> mkdir AMI

- Get the ami software package (clone ami repository into your area or directory).  

> git clone https://github.com/petermr/ami-jars.git

- Set environmental variable to access the ami plugins (tools)

Cloned repository contains .jars and ami plugins/tools. Get into either of the directory ../ami-jar/ami20190212a/bin/ or 
../ami-jar/ami20190212a/bin/ folder. All ami tools are contained into it. Set the absolute path of the bin directory to environment variable.

> export PATH=$PATH:/absolute path/ami-jar/ami20190212a/bin/


- Check for the set path.

> echo $PATH

Command will return absolute path of bin directory containing ami plugins/tools.

- Check for the installation.

> ami-search-cooccur

If exported or installed correctly. It will list out all tool help and usage information.


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


