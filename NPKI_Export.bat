::window clear
@echo off
title NPKI�����

::Clear window
cls

echo "����������(NPKI)�� �����ϴ� ��ġ�����Դϴ�"
echo C����̺��� ����������(NPKI) ���縦 �Ͻ÷��� �ƹ�Ű�� �����ּ���"
pause 
mkdir "%USERPROFILE%\Desktop\NPKI"
xcopy "%USERPROFILE%\AppData\LocalLow\NPKI" "%USERPROFILE%\Desktop\NPKI" /e /h /k
cls
echo "���縦 �Ϸ��Ͽ����ϴ�. ����ȭ���� NPKI������ Ȯ���Ͽ��ּ���"
pause