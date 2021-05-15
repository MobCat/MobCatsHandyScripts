@title MobCat's Auto Save Dumper v0.2
@echo.
@echo MobCat's Auto Save Dumper v0.2
@echo.
::A tool to "Auto" dump and compress your Valheim saves
::This tool requires 7zip to be installed onto your computer first.

::Save Locations
::Please edit BackupLocation to where you want your backup to be saved to
::DO NOT EDIT SaveLocation OR THIS TOOL WONT FIND YOUR SAVE
@set SaveLocation=C:\Users\%username%\AppData\LocalLow\IronGate\Valheim\
@set BackupLocation=Z:\Game Saves\PC\Valheim

@echo Dumping save now...
"C:\Program Files\7-Zip\7z.exe" a "%BackupLocation%\Valheim %DATE:~0,4%%DATE:~5,2%%DATE:~8,2%-%time:~0,2%%time:~3,2%.7z" "%SaveLocation%"
pause