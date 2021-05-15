# **Drag'n'Drop Anonfiles Uploader** #

**[About]**<br /> 
This is a windows batch script that lets you Drag'n'Drop files to it to have them auto uploaded to [https://anonfiles.com/](https://anonfiles.com/ "https://anonfiles.com/")

**[Pre-requirements]**<br /> 
Curl - [https://curl.se/windows/](https://curl.se/windows/ "https://curl.se/windows/")<br /> 
You can either setup curl as a command variable or just stick the curl.exe and dlls in the same folder as the bat script

**[Useage]**<br /> 
Simply Drag'n'Drop a file over the bat file. Command prompt will open and show the progress of the upload.
Once uploaded command prompt will close and you will have a new Upload.txt file.
This file is a little bit of a mess but it contains a bunch of info about the upload process.
In this case we are just looking for the `{"url":{"full":` and `"short":` strings, these are our URLs to the file we just
uploaded. We can take these urls and enter them into a browser or whatever to now re-download our files. Or give them
to friends.<br /> 

**PLEASE NOTE:** every time you upload a new file this Upload.txt file will be over written.

**[alternative usages and fixes]**<br /> 
You could use this code as part of another program by just replacing the "`file=@%~1`"  with "`file=@(something else)`" 
So program makes a file then use this code to upload that file.<br /> 

You could make the output of this script (the "`> Upload.txt`" part) go to something useful like a json passer
or database so you can better keep track of your uploads.
