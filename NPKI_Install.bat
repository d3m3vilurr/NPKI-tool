::window clear
@echo off
title NPKI��ġ

::Clear window
cls

echo "����������(NPKI)�� ��ġ�ϴ� ��ġ�����Դϴ�"
echo "��ġ�Ͻ÷��� NPKI.zip.gpg �� �����Ͻ� �� �ƹ�Ű�� �����ּ���"
pause
extern\gnupg\gpg2.exe -o NPKI.zip -d NPKI.zip.gpg
extern\gnupg\gpg-connect-agent.exe killagent
extern\7z\7za.exe x NPKI.zip
mkdir "%USERPROFILE%\AppData\LocalLow\NPKI"
xcopy "NPKI" "%USERPROFILE%\AppData\LocalLow\NPKI" /e /h /k
del NPKI.zip
cls
echo "��ġ�� �Ϸ��Ͽ����ϴ�. ���õ� �����Ϸ� �����ñ� �ٶ��ϴ� ����."
pause
