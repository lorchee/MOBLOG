#!/bin/sh 
ECHO OFF
set mypath=%cd%
CLS
TYPE intro.txt
echo off
ping localhost -n 2 > nul
cls
:MENU0
CLS
ECHO.
TYPE moblog.txt
ECHO.
ECHO 1 - ANDROID APPS INSTALL
ECHO 2 - iOS APPS INSTALL
ECHO 3 - ANDROID LOGS
ECHO 4 - iOS LOGS
ECHO.
SET /P Q=CHOSE NUMBER AND PRESS ENTER:
IF %Q%==1 GOTO MENU1
IF %Q%==2 GOTO MENU2
IF %Q%==3 GOTO MENU3
IF %Q%==4 GOTO MENU4

:MENU1
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.apk" /B /O:D /S') DO SET NewestFile1=%%~tI
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.apk" /B /O:D /S') DO SET NewestFile2=%%~tI
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.apk" /B /O:D /S') DO SET NewestFile3=%%~tI
CLS
ECHO.
TYPE naib.txt
ECHO.
ECHO          NEWEST VERSIONS
ECHO -----------------------------------
ECHO NOW: %date% %time%
ECHO -----------------------------------
ECHO APP1:   %NEWESTFILE1%
ECHO APP2:   %NEWESTFILE2%
ECHO APP3:   %NEWESTFILE3%
ECHO -----------------------------------
ECHO 1 - NEWEST ANDROID APP1 - INSTALL
ECHO 2 - NEWEST ANDROID APP2 - INSTALL
ECHO 3 - NEWEST ANDROID APP3 - INSTALL
ECHO 4 - ALL ANDROID APPS 1,2 AND 3 - INSTALL
ECHO 5 - BACK
ECHO.
SET /P A=CHOSE NUMBER AND PRESS ENTER:
IF %A%==1 GOTO INSTAPP1
IF %A%==2 GOTO INSTAPP2
IF %A%==3 GOTO INSTAPP3
IF %A%==4 GOTO INSTAPP123
IF %A%==5 GOTO MENU0

:MENU2
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.ipa" /B /O:D /S') DO SET NewestFile1=%%~tI
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.ipa" /B /O:D /S') DO SET NewestFile2=%%~tI
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.ipa" /B /O:D /S') DO SET NewestFile3=%%~tI
CLS
ECHO.
TYPE naib.txt
ECHO.
ECHO          NEWEST VERSIONS
ECHO -----------------------------------
ECHO NOW: %date% %time%
ECHO -----------------------------------
ECHO APP1:   %NEWESTFILE1%
ECHO APP2:   %NEWESTFILE2%
ECHO APP3:   %NEWESTFILE3%
ECHO -----------------------------------
ECHO 1 - NEWEST iOS APP1 - INSTALL
ECHO 2 - NEWEST iOS APP2 - INSTALL
ECHO 3 - NEWEST iOS APP3 - INSTALL
ECHO 4 - ALL APPS iOS 1,2 AND 3 - INSTALL
ECHO 5 - BACK
ECHO.
SET /P A=CHOSE NUMBER AND PRESS ENTER:
IF %A%==1 GOTO INSTAPP1ios
IF %A%==2 GOTO INSTAPP2ios
IF %A%==3 GOTO INSTAPP3ios
IF %A%==4 GOTO INSTAPP123ios
IF %A%==5 GOTO MENU0

:MENU3
CLS
ECHO.
TYPE and.txt
ECHO.
ECHO 1 - LOGS_DELETE_ANDROID - DELETING LOGS ON DEVICE
ECHO 2 - LOGS_ONLINE_ANDROID - GETTING DEVICE LOGS LIVE (CTRL+C TO STOP THEN TYPE N)
ECHO 3 - LOGS_FILE_ANDROID 	- SAVING LOGS TO FILE
ECHO 5 - BACK
ECHO.
SET /P L=CHOSE NUMBER AND PRESS ENTER:
IF %L%==1 GOTO anLOGDEL
IF %L%==2 GOTO anLOGON
IF %L%==3 GOTO anLOGSAV
IF %L%==5 GOTO MENU0

:MENU4
CLS
ECHO.
TYPE ios.txt
ECHO.
ECHO 1 - LOGS_ONLINE_iOS - GETTING DEVICE LOGS LIVE (CTRL+C TO STOP THEN TYPE N)
ECHO 2 - LOGS_FILE_iOS - SAVING LOGS TO FILE
ECHO 5 - POWROT
ECHO.
SET /P I=CHOSE NUMBER AND PRESS ENTER:
IF %I%==1 GOTO ioLOGON
IF %I%==2 GOTO ioLOGSAV
IF %I%==5 GOTO MENU0



:INSTAPP1
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP1.apk"
CMD /c "adb uninstall pl.alior.sit"
CMD /c "adb install -d "%mypath%\APK\APP1.apk"
cmd /c "del /f "%mypath%\APK\APP1.apk
GOTO MENU1
:INSTAPP2
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP2.apk"
CMD /c "adb uninstall pl.alior.aib.dev"
CMD /c "adb install -d "%mypath%\APK\APP2.apk"
cmd /c "del /f "%mypath%\APK\APP2.apk
GOTO MENU1
:INSTAPP3
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP3.apk"
CMD /c "adb uninstall pl.aliorbank.aib.qa"
CMD /c "adb install -d "%mypath%\APK\APP3.apk"
cmd /c "del /f "%mypath%\APK\APP3.apk"
GOTO MENU1
:INSTAPP123
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP1.apk"
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP2.apk"
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.apk" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\APK\APP3.apk"
CMD /c "adb uninstall com.yourapp1.packname"
CMD /c "adb uninstall com.yourapp2.packname"
CMD /c "adb uninstall com.yourapp3.packname"
CMD /c "adb install -d "%mypath%\APK\APP1.apk"
CMD /c "adb install -d "%mypath%\APK\APP2.apk"
CMD /c "adb install -d "%mypath%\APK\APP3.apk"
cmd /c "del /f "%mypath%\APK\APP1.apk"
cmd /c "del /f "%mypath%\APK\APP2.apk"
cmd /c "del /f "%mypath%\APK\APP3.apk"
GOTO MENU1

:INSTAPP1ios
CMD /c "idevicepair.exe pair"
CMD /c ideviceinstaller.exe
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP1.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP1.ipa"
cmd /c "del /f "%mypath%\IPA\APP1.ipa"
GOTO MENU2
:INSTAPP2ios
CMD /c "idevicepair.exe pair"
CMD /c ideviceinstaller.exe
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP2.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP2.ipa"
cmd /c "del /f "%mypath%\IPA\APP2.ipa"
GOTO MENU2
:INSTAPP3ios
CMD /c "idevicepair.exe pair"
CMD /c ideviceinstaller.exe
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP3.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP3.ipa"
cmd /c "del /f "%mypath%\IPA\APP2.ipa"
GOTO MENU2
:INSTAPP123ios
CMD /c "idevicepair.exe pair"
CMD /c ideviceinstaller.exe
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP1.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP1.ipa"
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP2.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP2.ipa"
FOR /F "delims=|" %%I IN ('DIR "\\type_your_direction_to_app\*APP3.ipa" /B /O:D /S') DO SET NewestFile=%%I
copy "%NewestFile%" "%mypath%\IPA\APP3.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP1.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP2.ipa"
CMD /c "ideviceinstaller -i "%mypath%\IPA\APP3.ipa"
cmd /c "del /f "%mypath%\IPA\APP1.ipa"
cmd /c "del /f "%mypath%\IPA\APP2.ipa"
cmd /c "del /f "%mypath%\IPA\APP3.ipa"
GOTO MENU2


:anLOGDEL
CMD /c "adb logcat -c"
GOTO MENU3
:anLOGON
CMD /c "adb logcat"
GOTO MENU3
:anLOGSAV
CMD /c "adb logcat -d -v time >.\logi-android\logi-%date:~6,4%-%date:~3,2%-%date:~0,2%_%Time:~0,2%-%Time:~3,2%.txt"
START %mypath%\logi-android"
GOTO MENU3
:ioLOGDEL
CMD /c "sdsiosloginfo.exe -c"
GOTO MENU4
:ioLOGON
CMD /c "sdsiosloginfo.exe"
GOTO MENU4
:ioLOGSAV
ECHO SAVING IN PROGRESS. AFTER TEST IS DONE PRESS CTRL+C THEN N
CMD /c "sdsiosloginfo.exe > %mypath%\logi-ios\logi-%date:~6,4%-%date:~3,2%-%date:~0,2%_%Time:~0,2%-%Time:~3,2%.txt"
START %mypath%\logi-ios"
GOTO MENU4
