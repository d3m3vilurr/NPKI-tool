::window clear
@echo off
title NPKI설치

::Clear window
cls

echo "공인인증서(NPKI)를 설치하는 배치파일입니다"
echo 바탕화면의 백업된 NPKI폴더를 투척하신후 공인인증서(NPKI) 설치를 하시려면 아무키나 눌러주세요"
pause 
mkdir "%USERPROFILE%\AppData\LocalLow\NPKI"
xcopy "%USERPROFILE%\Desktop\NPKI" "%USERPROFILE%\AppData\LocalLow\NPKI" /e /h /k
cls
echo "설치를 완료하였습니다. 오늘도 좋은하루 보내시길 바랍니다 고갱님."
pause