# Valheim Auto save dumper #

**[About]**<br /> 
This is a windows batch script to make backing up your Valheim saves a simple one click process.

**[Pre-requirements]**<br /> 
7-zip - [https://www.7-zip.org/download.html](https://www.7-zip.org/download.html "https://www.7-zip.org/download.html")

**[Setup]**<br /> 

- Download the bat file and place it somewhere (I have it in my valheim game folder but anywhere is fine)
- Open the bat file with notepad (notepad++ is recommended but whatever is fine)
- edit the `@set BackupLocation=` line to wherever you want the save 7z to be dumped to

**[Usage]**<br /> 
Once you have the bat script setup you can simply just double click on the bat script to run it.<br /> 
Command prompt will open and show you the process of what its compressing. This may take a few seconds depending on how big your save file is.<br /> 
Once it's finished you should get a `Everything is Ok` message from 7-zip and then command prompt will ask you to press any key. pressing any key will close the command prompt.<br />
If you do not get an `Everything is Ok` message make sure the game isn't currently trying to save or load the game or you have any save editors open at the same time.<br />
You can run this script while the game is running **providing** the game isn't saving or loading at the same time your trying to dump the save.
Once the scrip has completed you should now have a file like `Valheim 20210515-2340.7z` in the `@set BackupLocation=` folder.<br />
The file name is structured like this<br />
Name of game YYYYMMDD-HHMM.7z<br />
YYYY - Year<br />
MM   - Month<br />
DD   - Day<br />
HH   - Hour<br />
MM   - Minute<br />
This means you will never over wright a old save file providing you don't auto save dump more then every minute.<br />
I save dump when I finish playing the game for the day though but you can save as often as you like as long as it's not less then a minute from the last save dump.

**[Alt Usage]**<br /> 
`@set SaveLocation=C:\Users\%username%\AppData\LocalLow\IronGate\Valheim\`<br /> 
Will dump the **hole** save folder.<br /> 

`@set SaveLocation=C:\Users\%username%\AppData\LocalLow\IronGate\Valheim\characters\`<br /> 
Will **Only** dump the save characters.<br /> 

`@set SaveLocation=C:\Users\%username%\AppData\LocalLow\IronGate\Valheim\worlds`<br /> 
Will **Only** dump the worlds / maps and **will not** dump player characters.<br /> 

`C:\Users\%username%\AppData\LocalLow\IronGate\Valheim\screenshots`<br /> 
Contains screenshots take in-game **and not** screenshots saved by steam (steam screenshots are in another folder)<br />
If you are using in-game screenshots you may want to exclude this folder from your save dump by either just using the characters or worlds SaveLocation or deleting it from your save zip afterwords.

**[Issues]**<br />
I will be the first to admit this isn't very user friendly, the user has to set there own SaveLocation path and this script only auto dumps, it does not restore save files, you have to do that on your own.<br /> 

**[Plans]**<br />
I have one of these scripts for Satisfactory as well but I use this one more. I would like to as some point role both of these scripts and maybe a few more games into an auto save dumper **and** restore GUI tool at some point but right now the time and demand isn't there sooo bat scripts for now.
