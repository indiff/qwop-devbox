@echo off 
rem https://download.virtualbox.org/virtualbox/5.1.38/VirtualBox-5.1.38-122592-Win.exe
rem IDM �������е��÷�ʽ��IDMan.exe /d "download_url" /f "filename" /p "output_path" 
rem /p - ����·��������Ҫ������ļ������ĸ�����·��
rem /f - �����ļ���������Ҫ������ļ������󱣴��ڱ���
rem /q - IDM ���ڳɹ�����֮���Զ��˳�
rem /h - IDM ���ڳɹ�����֮���������
rem /a - ���һ��ָ�����ļ����� /d �����ض��У����ǲ���ʼ����
rem /s - ��ʼ���������Ķ���
rem /n - ��Ĭ���أ�ִ�������ڼ䲻����
set DE="D:\Program Files (x86)\Internet Download Manager\IDMan.exe"
set CMD=%DE% /n /d 
%CMD% https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64-vagrant.box /p "%CD%\bionic.box"
pause