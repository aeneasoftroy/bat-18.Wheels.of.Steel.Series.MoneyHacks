SETLOCAL ENABLEDELAYEDEXPANSION
echo off
color 0a
cls
echo. && echo 18 Wheels of Steel: Pedal to the Metal money hack && echo. && echo %date% %time% Searching for game save files ...
if not exist "%userprofile%\documents\18 WoS Pedal to the Metal" color 0c && echo ERROR: Game save directory not found && pause && exit
if not exist "%userprofile%\documents\18 WoS Pedal to the Metal\save\1" color 0c && echo ERROR: Game save directory not found && echo Start the game and save it once, then run this again. && pause && exit
echo %date% %time% OK: Game save files found in:
echo "%userprofile%\documents\18 WoS Pedal to the Metal\save\1"

timeout 1 > NUL

echo %date% %time% Changing money_account value ...

cd "%userprofile%\documents\18 WoS Pedal to the Metal\save\1"

echo before hack:
findstr /i "money_account" game.sii

for /f "delims=" %%a in (game.sii) do (
    SET s=%%a
    SET s=!s:money_account^: =money_account^: 999!
    echo !s!
) >> tmp.txt

move game.sii game.sii.bak > NUL
move tmp.txt game.sii > NUL

echo after hack:
findstr /i "money_account" game.sii

pause
