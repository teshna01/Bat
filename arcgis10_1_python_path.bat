@ECHO OFF&PUSHD %~DP0 &TITLE 设置Arcgis 10.1 Python环境变量
color 02
::【&&】 连接两个命令，当&&前的命令成功时，才执行&&后的命令。   
::【||】 连接两个命令，当||前的命令失败时，才执行||后的命令。
@set Path_=C:\Python27\ArcGIS10.1   
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(
    Echo **************************注意*************************
    Echo     请使用右键管理员身份运行！
     Echo ****************************************************** &&Pause >nul&&Exit
    )
Rd "%WinDir%\System32\test_permissions" 2>NUL
if not exist %Path_% (   
   Echo **************************注意*************************
   Echo    Arcgis10.1 还没安装，安装完了后再设置python环境！
   Echo ****************************************************** &&Pause >nul&&Exit
)  

echo %Path%|find /i "%Path_%" && (
        Echo **************************注意*************************
        Echo    Python环境已存在，不用设置,打开CMD后输入 python 试试看，若输出一串内容说明正常！
        Echo ****************************************************** &&Pause >nul&&Exit
        )
    :: 若没有则设置Arcgis的python环境变量
    echo  设置python的环境
    Echo ***************************************************
      setx /m path "%PATH%%Path_%;"
    Echo ***************************************************
    echo   设置python的环境完毕
    pause >NUL && EXIT
pause  

