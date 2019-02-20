## INSTALLATION of `getpapers`

Please follow the below steps for installing `getpapers`.

### Step1: installing `nvm-windows`

Go to the [downloads page](https://github.com/coreybutler/nvm-windows/releases) and download latest version of `nvm-setup.zip`. 

Unzip the downloaded file and run the included installer.

### Step2: installing `node`

Open your command prompt, and run the following commands one after the other.

```
nvm install 7
nvm use 7.10.1
```


### Step3: installing a `node` tool:

Run the following command at command prompt:
```bash
npm install --global getpapers
```

Now run the command `getpapers` at the command prompt, and you should see something as below:

![getpapers_windows](getpapers_windows_screenshoot.png)

## INSTALLATION OF `ami`

Please follow the below steps for installing `ami`.

#### Step1: JAVA

Please check whether you have java8(same as java version 1.8) installed on your system by running the command `java -version` at the command prompt. It should look as following:

![java8](java8_windows.png)

It is important that above you get java version 1.8 , and not java version 1.7 or any earlier version. 
If you don't have java version 1.8, please dowload java from the this link (https://www.java.com/en/download/)[https://www.java.com/en/download/].

#### Step2: Set path

Please follow this step after you have got the `ami` software in the pendrive. This page will be updated

## issues

Steps for setting environment PATH variable may slightly differ from one platform to another. Always try to locate systems setting followed by advanced system settings. Always try to keep the value of environment variable - PATH as short as possible. Else there may be error running the tools/plugins. I extracted jars and placed all contents - bin/, repo/, dependencies into C:/ directory and then exported the PATH for C:/bin 



## Commandline problems 
(Amit Yadav)
Not able to maximize the Command prompt to full screen on Windows systems is a common problem.
Following are some links in this regard:
https://www.thewindowsclub.com/full-screen-command-prompt-in-windows-7
https://www.wikihow.com/Fix-Full-Screen-Command-Prompt
