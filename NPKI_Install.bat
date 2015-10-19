::window clear
@echo off
title NPKI설치

::Clear window
cls

ver | find /i "version 6." > nul
if %errorlevel%==0 (set TARGET=%USERPROFILE%\AppData\LocalLow) else (set TARGET=C:\Program files)

echo "공인인증서(NPKI)를 설치하는 배치파일입니다"
echo "설치하시려면 NPKI.zip.gpg 를 복사하신 후 아무키나 눌러주세요"
pause
extern\gnupg\gpg2.exe -o NPKI.zip -d NPKI.zip.gpg
extern\gnupg\gpg-connect-agent.exe killagent
extern\7z\7za.exe x NPKI.zip
mkdir "%TARGET%\NPKI"
xcopy "NPKI" "%TARGET%\NPKI" /e /h /k
del NPKI.zip
cls
echo "설치를 완료하였습니다. 오늘도 좋은하루 보내시길 바랍니다 고갱님."
pause
