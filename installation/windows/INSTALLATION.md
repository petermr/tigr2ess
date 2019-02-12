# Installation hints

## installing ContentMine TDM softwares over Windows

### nvm-windows (Node virtual manager for Windows)

Go to the downloads page - https://github.com/coreybutler/nvm-windows/releases and download nvm-setup.zip for the latest version.
Unzip the downloaded file and run the included installer.
Run following commands over windows command-prompt.

> nvm install 7

Check for the installed node version and enable nvm to use installed node. Run the following command.

>nvm on

>nvm use 7.x.x

(7.x.x is the installed version of the node)


### installing a node tool

> npm install --global getpapers

3. Set environment variables to access installed getpapers tools.

For example on my laptop it is installed into following directory.
C:\Users\hadoop_pc\AppData\Roaming\npm


## AMI tool installation over windows - 8 and 10

- Make your own installation area (directory containing the package).

> mkdir AMI
  
- Get the ami software package into the directory.          
- Set environment variable to access the bin directory (containing ami plugins or tools) of          software package.  

- To set environment variable in Windows - 08.
  
       - From the desktop, right click the Computer icon.
       - Choose System from the context menu.
       - Click the Advanced system settings link.
       - Click new option into user variables for desktop.
       - Set variable name (environment variable name) and value (absolute path value).

- Check for the installation.
              
> ami-search-cooccur

If exported or installed correctly. It will list out all tool help and usage information.

## issues

Steps for setting environment PATH variable may slightly differ from one platform to another. Always try to locate systems setting followed by advanced system settings. 


## Commandline problems 
(Amit Yadav)
Not able to maximize the Command prompt to full screen on Windows systems is a common problem.
Following are some links in this regard:
https://www.thewindowsclub.com/full-screen-command-prompt-in-windows-7
https://www.wikihow.com/Fix-Full-Screen-Command-Prompt
