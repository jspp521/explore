@Echo Off
Title ��OSC�ƶ˸��� Agent ��������appid
cd /d %~dp0
set BackDir=..\..
wget --ca-certificate=ca-bundle.crt -c http://git.oschina.net/j365/go/raw/master/proxy.ini
del "..\Agent\proxy.ini_backup"
ren "..\Agent\proxy.ini"  proxy.ini_backup
copy /y "%~dp0proxy.ini" ..\Agent\proxy.ini
del "%~dp0proxy.ini"
ECHO.&ECHO.�Ѹ���,�밴������˳���,�����˳�GoAgent���������������. &PAUSE >NUL 2>NUL