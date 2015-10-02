::window clear
@echo off
title "NPKI복사기"

::Clear window
cls

echo "공인인증서(NPKI)를 복사하는 배치파일입니다"
echo "C드라이브의 공인인증서(NPKI) 복사를 하시려면 아무키나 눌러주세요"
pause
mkdir "NPKI"
xcopy "%USERPROFILE%\AppData\LocalLow\NPKI" "NPKI" /e /h /k
cls
extern\7z\7za.exe a NPKI.zip "NPKI"
rmdir "NPKI" /s /q
extern\gnupg\gpg2.exe -o NPKI.zip.gpg --cipher-algo AES256 --compression-algo BZIP2 -c npki.zip
del NPKI.zip
extern\gnupg\gpg-connect-agent.exe killagent
echo "복사를 완료하였습니다. NPKI.zip.gpg 파일을 복사하세요"

pause
