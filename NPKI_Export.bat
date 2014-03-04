::window clear
@echo off
title NPKI복사기

::Clear window
cls

echo "공인인증서(NPKI)를 복사하는 배치파일입니다"
echo C드라이브의 공인인증서(NPKI) 복사를 하시려면 아무키나 눌러주세요"
pause 
mkdir "%USERPROFILE%\Desktop\NPKI"
xcopy "%USERPROFILE%\AppData\LocalLow\NPKI" "%USERPROFILE%\Desktop\NPKI" /e /h /k
cls
echo "복사를 완료하였습니다. 바탕화면의 NPKI폴더를 확인하여주세요"
pause