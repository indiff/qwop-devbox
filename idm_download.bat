@echo off 
rem https://download.virtualbox.org/virtualbox/5.1.38/VirtualBox-5.1.38-122592-Win.exe
rem IDM 的命令行调用方式：IDMan.exe /d "download_url" /f "filename" /p "output_path" 
rem /p - 本地路径，定义要保存的文件放在哪个本地路径
rem /f - 本地文件名，定义要保存的文件改名后保存在本地
rem /q - IDM 将在成功下载之后自动退出
rem /h - IDM 将在成功下载之后挂起连接
rem /a - 添加一个指定的文件，用 /d 到下载队列，但是不开始下载
rem /s - 开始任务调度里的队列
rem /n - 静默下载，执行命令期间不弹窗
set DE="D:\Program Files (x86)\Internet Download Manager\IDMan.exe"
set CMD=%DE% /n /d 
%CMD% https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64-vagrant.box /p "%CD%\bionic.box"
pause