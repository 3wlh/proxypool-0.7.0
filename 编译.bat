@ECHO OFF &TITLE 3wking
mode con cols=35 lines=30
color 0d
:Menu
Cls
@ echo.==================================
@ echo. ���ѽű�����Դ���ļ��е�Ŀ¼�¡�
@ echo.==================================
@ echo. ����װGolang��������ϵͳѡ��
@ echo.==================================
@ echo.      [liunx64]  �� ������1
@ echo.==================================
@ echo.      [liunx32]  �� ������2
@ echo.==================================
@ echo.      [x86_64]  ��  ������3
@ echo.==================================
@ echo.      [x86_32]  ��  ������4
@ echo.==================================
@ echo.      [mac_64]  ��  ������5
@ echo.==================================
@ echo.      [mac_32]  ��  ������6
@ echo.==================================
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto liunx_x64
if /i "%xj%"=="2" Goto liunx_X32
if /i "%xj%"=="3" Goto x86_X64
if /i "%xj%"=="4" Goto x86_X32
if /i "%xj%"=="5" Goto mac_X64
if /i "%xj%"=="6" Goto mac_X32
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul
goto menu
========================================================================
:liunx_X64
@ echo.
SET CGO_ENABLED=0&& SET GOOS=linux&& SET GOARCH=amd64&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
========================================================================
:liunx_X32
@ echo.
SET CGO_ENABLED=0&& SET GOOS=linux&& SET GOARCH=368&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
=========================================================================
:x86_X64
@ echo.
SET CGO_ENABLED=0&& SET GOOS=windows&& SET GOARCH=amd64&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
=========================================================================
:x86_X32
@ echo.
SET CGO_ENABLED=0&& SET GOOS=windows&& SET GOARCH=368&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
--------------------------------
:mac_X64
@ echo.
SET CGO_ENABLED=0&& SET GOOS=darwin&& SET GOARCH=amd64&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
-------------------------------------------
:mac_X32
@ echo.
SET CGO_ENABLED=0&& SET GOOS=darwin&& SET GOARCH=368&& go build
@ echo.======================
@ echo.=  �ޱ���Ϊ�������  =
@ echo.======================
@ echo.�������˵� & pause
cd ..
goto Menu
--------------------------------------------
goto menu