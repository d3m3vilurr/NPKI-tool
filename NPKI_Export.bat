::window clear
@echo off
title "NPKI�����"

::Clear window
cls

ver | find /i "version 6." > nul
if %errorlevel%==0 (set TARGET=%USERPROFILE%\AppData\LocalLow) else (set TARGET=C:\Program files)

echo "����������(NPKI)�� �����ϴ� ��ġ�����Դϴ�"
echo "C����̺��� ����������(NPKI) ���縦 �Ͻ÷��� �ƹ�Ű�� �����ּ���"
pause
mkdir "NPKI"
xcopy "%TARGET%\NPKI" "NPKI" /e /h /k
cls
extern\7z\7za.exe a NPKI.zip "NPKI"
rmdir "NPKI" /s /q
extern\gnupg\gpg2.exe -o NPKI.zip.gpg --cipher-algo AES256 --compression-algo BZIP2 -c npki.zip
del NPKI.zip
extern\gnupg\gpg-connect-agent.exe killagent
echo "���縦 �Ϸ��Ͽ����ϴ�. NPKI.zip.gpg ������ �����ϼ���"

pause
