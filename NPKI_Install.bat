::window clear
@echo off
title NPKI��ġ

::Clear window
cls

echo "����������(NPKI)�� ��ġ�ϴ� ��ġ�����Դϴ�"
echo ����ȭ���� ����� NPKI������ ��ô�Ͻ��� ����������(NPKI) ��ġ�� �Ͻ÷��� �ƹ�Ű�� �����ּ���"
pause 
mkdir "%USERPROFILE%\AppData\LocalLow\NPKI"
xcopy "%USERPROFILE%\Desktop\NPKI" "%USERPROFILE%\AppData\LocalLow\NPKI" /e /h /k
cls
echo "��ġ�� �Ϸ��Ͽ����ϴ�. ���õ� �����Ϸ� �����ñ� �ٶ��ϴ� ����."
pause