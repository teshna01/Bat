@ECHO OFF&PUSHD %~DP0 &TITLE ����Arcgis 10.1 Python��������
color 02
::��&&�� �������������&&ǰ������ɹ�ʱ����ִ��&&������   
::��||�� �������������||ǰ������ʧ��ʱ����ִ��||������
@set Path_=C:\Python27\ArcGIS10.1   
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(
    Echo **************************ע��*************************
    Echo     ��ʹ���Ҽ�����Ա������У�
     Echo ****************************************************** &&Pause >nul&&Exit
    )
Rd "%WinDir%\System32\test_permissions" 2>NUL
if not exist %Path_% (   
   Echo **************************ע��*************************
   Echo    Arcgis10.1 ��û��װ����װ���˺�������python������
   Echo ****************************************************** &&Pause >nul&&Exit
)  

echo %Path%|find /i "%Path_%" && (
        Echo **************************ע��*************************
        Echo    Python�����Ѵ��ڣ���������,��CMD������ python ���Կ��������һ������˵��������
        Echo ****************************************************** &&Pause >nul&&Exit
        )
    :: ��û��������Arcgis��python��������
    echo  ����python�Ļ���
    Echo ***************************************************
      setx /m path "%PATH%%Path_%;"
    Echo ***************************************************
    echo   ����python�Ļ������
    pause >NUL && EXIT
pause  

