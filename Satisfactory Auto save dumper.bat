@title MobCat's Auto Save Dumper v0.3
@echo.
@echo MobCat's Auto Save Dumper v0.3
@echo.
::A tool to "Auto" dump and compress your Satisfactory saves
::This tool requires 7zip to be installed onto your computer first.

::Save Locations
::You can have the option from just backup saves or backing up the hole user folder with screenshots
::Just saves
@set SaveLocation=%localappdata%\FactoryGame\Saved\SaveGames\
::Full save folder
::@set SaveLocation=%localappdata%\FactoryGame\

::Backup Location
::Please edit this to where you would like your save 7z to be exported to.
@set BackupLocation=S:\Backups\Game Saves\PC\Satisfactory

@echo Dumping save now...
::Windows 7 and 10
"C:\Program Files\7-Zip\7z.exe" a "%BackupLocation%\Satisfactory %DATE:~0,4%%DATE:~5,2%%DATE:~8,2%-%time:~0,2%%time:~3,2%.7z" "%SaveLocation%"
::Windows server 2012
::Windows server has a 3 letter day string in its DATE string so we need to offset our string to get around that
::"C:\Program Files\7-Zip\7z.exe" a "%BackupLocation%\Satisfactory %DATE:~10,4%%DATE:~4,2%%DATE:~7,2%-%time:~0,2%%time:~3,2%.7z" "%SaveLocation%"
pause