# Installation hints

## The Latest Java versions of JDK and JRE

   - Download and Install the latest JDK for your OS from <a href=https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html>here</a>
   - Check your JAva Installation <a href=https://www.java.com/en/download/help/version_manual.xml>here</a>
   - Open a Terminal and type <code>java -version</code>
   - Make sure you have the latest version (At the time of writing: We have 1.8_201)

## `nvm`, `node`, and `node-tool - getpapers` installation over Linux.

- step 1: Installing nvm  

>crl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

Make sure of curl installation. (sudo apt-get install curl).

or

>wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash

#### Screenshot of nvm installation.

````
ambarish123@ubuntu:~$ wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash
=> nvm is already installed in /home/ambarish123/.nvm, trying to update using git
=> 
=> Source string already in /home/ambarish123/.bashrc
=> You currently have modules installed globally with `npm`. These will no
=> longer be linked to the active version of Node when you install a new node
=> with `nvm`; and they may (depending on how you construct your `$PATH`)
=> override the binaries of modules installed with `nvm`:

/home/ambarish123/.nvm/versions/node/v7.10.1/lib
├── getpapers@0.4.17

=> If you wish to uninstall them at a later point (or re-install them under your
=> `nvm` Nodes), you can remove them from the system Node as follows:

     $ nvm use system
     $ npm uninstall -g a_module

=> Close and reopen your terminal to start using nvm
````
`Remark` - Close and reopen your terminal to start using nvm.

- step 2: Installing node

Type following commands on to your terminal.

>nvm install 7

Check for the version of installed node.

#### Screenshot of the nvm installation.

````
ambarish123@ubuntu:~$ nvm install 7
v7.10.1 is already installed.
Now using node v7.10.1 (npm v4.2.0)

````



Enable nvm to use installed node. Run the following command.
 
>node -v
 
>nvm on

>nvm use 7.x.x

>nvm alias default 7

(7.x.x - installed version of node) 

- step 3: installing a node tool.

>npm install --global getpapers

#### Screenshot of the node and node-tool - getpapers installation.

```
ambarish123@ubuntu:~$ nvm install 7
v7.10.1 is already installed.
Now using node v7.10.1 (npm v4.2.0)
ambarish123@ubuntu:~$ nvm use 7
Now using node v7.10.1 (npm v4.2.0)
ambarish123@ubuntu:~$ npm install --global getpapers
npm WARN deprecated node-uuid@1.4.8: Use uuid module instead
npm WARN deprecated tough-cookie@2.2.2: ReDoS vulnerability parsing Set-Cookie https://nodesecurity.io/advisories/130
npm WARN deprecated boom@2.10.1: This version is no longer maintained. Please upgrade to the latest version.
npm WARN deprecated cryptiles@2.0.5: This version is no longer maintained. Please upgrade to the latest version.
npm WARN deprecated hoek@2.16.3: This version is no longer maintained. Please upgrade to the latest version.
/home/ambarish123/.nvm/versions/node/v7.10.1/bin/getpapers -> /home/ambarish123/.nvm/versions/node/v7.10.1/lib/node_modules/getpapers/bin/getpapers.js
/home/ambarish123/.nvm/versions/node/v7.10.1/lib
└─┬ getpapers@0.4.17 
  ├─┬ crossref@0.1.2
  │ └─┬ request@2.65.0
  │   └─┬ form-data@1.0.1
  │     └── async@2.6.2 
  ├─┬ got@2.9.2
  │ └── duplexify@3.7.1 
  └─┬ requestretry@1.13.0
    └─┬ request@2.88.0
      ├─┬ har-validator@5.1.3
      │ └── ajv@6.9.1 
      └─┬ http-signature@1.2.0
        └── sshpk@1.16.1 

```


## Installation of ami plugins/tools

- Make your own installation area (directory containing the package).
   
> mkdir AMI

- Get the ami software package (clone ami repository into your area or directory).  

> git clone https://github.com/petermr/ami-jars.git

- Set environmental variable to access the ami plugins (tools)

Cloned repository contains .jars and ami plugins/tools. Get into either of the directory ../ami-jar/ami20190115/bin/ or 
../ami-jar/ami20190211/bin/ folder. All ami tools are contained into it. Set the absolute path of the bin directory to environment variable.

> export PATH=$PATH:/absolute path/ami-jar/ami20190212a/bin/


- Check for the set path.

> echo $PATH

Command will return absolute path of bin directory containing ami plugins/tools.

- Check for the installation.

> ami-dictionary 

If exported or installed correctly. It will list out all tool help and usage information.


Full instructions for installation and use are given at [`getpapers`](http://github.com/contentmine/getpapers) page. Please download and install.



