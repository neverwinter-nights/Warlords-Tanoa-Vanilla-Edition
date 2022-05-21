@ECHO OFF

SET SourceFolder=source
SET ReleaseFolder=release
SET AddonBuilder=H:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\AddonBuilder\AddonBuilder.exe
SET Binarizer=H:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\Binarize\binarize_x64.exe
::SET CfgConverter=H:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools\CfgConvert\CfgConvert.exe
SET MissionName=Warlords_Tanoa_Vanilla_v1.Tanoa
SET TempFolder=temp\%MissionName%

SET MSG_1A=In the appeared window select the source and destination folders, uncheck the "Clear temp folder" and "Binarize" options !
SET MSG_1B=The tool will say about error. This is normal.
SET MSG_2A=In the appeared window select the source and destination folders, uncheck the "Clear temp folder" option, 
SET MSG_2B=but check the "Binarize" option !

SET BatFolder=%~dp0

REM Initialization.
RMDIR /S /Q %ReleaseFolder%
MKDIR %TempFolder%
MKDIR %ReleaseFolder%

REM Stage 1. Copy the static files.
COPY "%SourceFolder%\ReadMe.txt" "%TempFolder%\ReadMe.txt"
COPY "%SourceFolder%\images\LoadScreen\LoadScreen_960x540.paa" "%TempFolder%\LoadScreen_960x540.paa"
COPY "%SourceFolder%\images\Map\Map.png" "%ReleaseFolder%\%MissionName%_Map.png"

REM Stage 2. Build the PBO.
xcopy "%SourceFolder%\code" "%TempFolder%" /E /I /V

ECHO [33m%MSG_1A%[0m
ECHO [33m%MSG_1B%[0m
"%AddonBuilder%"

ECHO [33m%MSG_2A%[32m%MSG_2B%[0m
"%AddonBuilder%"

REM Finalization.
RMDIR /S /Q "temp"
