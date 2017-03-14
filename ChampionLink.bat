title ChampionSelect by sinexZ
@echo off

:: Beschwörerauswahl
:Hauptmenue
cls
echo Bitte auswaehlen:
echo.
echo 1 : Teamate Check
echo 2 : Match Check
echo 3 : Champion Check
echo 4 : Full Check

echo.
choice /C 1234 /M "Auswahl: "
goto Menue%errorlevel%

:Menue1

cls 
echo Nacheinander die einzelnen Beschwoerer eingeben/einfuegen:

echo.
set /p "b1=Beschwoerer 1: "
set /p "b2=Beschwoerer 2: "
set /p "b3=Beschwoerer 3: "
set /p "b4=Beschwoerer 4: "
set /p "b5=Beschwoerer 5: "

start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "https://euw.op.gg/multi/query=%b1%%%2C%b2%%%2C%b3%%%2C%b4%%%2C%b5%"

choice /M "Zurueck zum Hauptmenue?: "
if Errorlevel 2 Exit
if Errorlevel 1 goto Hauptmenue

:Menue2

cls
set /p "b0=Beschwoerer: "
start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "http://www.lolskill.net/game/EUW/%b0%"

choice /M "Zurueck zum Hauptmenue?: "
if Errorlevel 2 Exit
if Errorlevel 1 goto Hauptmenue

:Menue3

cls
set /p "champ=Champion: "
start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "http://www.probuilds.net/champions/details/%champ%"

choice /M "Zurueck zum Hauptmenue?: "
if Errorlevel 2 Exit
if Errorlevel 1 goto Hauptmenue

:Menue4

cls 
echo Dein Beschwoerer Namen
set /p "b0=Beschwoerer: "

echo.
echo Nacheinander die restlichen Beschwoerer eingeben/einfügen:
set /p "b2=Beschwoerer 2: "
set /p "b3=Beschwoerer 3: "
set /p "b4=Beschwoerer 4: "
set /p "b5=Beschwoerer 5: "

cls
echo.
echo Deinen Champion
set /p "champ=Champion: "

start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "https://euw.op.gg/multi/query=%b0%%%2C%b2%%%2C%b3%%%2C%b4%%%2C%b5%"
start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "http://www.lolskill.net/game/EUW/%b0%"
start "C:\Program Files\chrome-win32\chrome-win32\chrome.exe" "http://www.probuilds.net/champions/details/%champ%"

choice /M "Zurueck zum Hauptmenue?: "
if Errorlevel 2 Exit
if Errorlevel 1 goto Hauptmenue
