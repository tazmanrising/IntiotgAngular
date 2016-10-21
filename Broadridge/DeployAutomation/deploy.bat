@echo off
:CheckPowerShellExecutionPolicy
FOR /F "tokens=*" %%i IN ('powershell -noprofile -command Get-ExecutionPolicy') DO Set PSExecMode=%%i
if /I "%PSExecMode%"=="unrestricted" goto :RunPowerShellScript
if /I "%PSExecMode%"=="remotesigned" goto :RunPowerShellScript
 
NET FILE 1>NUL 2>NUL
if not "%ERRORLEVEL%"=="0" (
	echo Elevation required to change PowerShell execution policy from [%PSExecMode%] to RemoteSigned
	powershell -NoProfile -Command "start-process -Wait -Verb 'RunAs' -FilePath 'powershell.exe' -ArgumentList '-NoProfile Set-ExecutionPolicy RemoteSigned'"
) else (
	powershell -NoProfile Set-ExecutionPolicy RemoteSigned
)
 
:RunPowerShellScript
powershell -noprofile "%~dp0deploy.ps1 -WebBuildDir '.\New folder' -WebDestDir '.\New folder (2)' -webport 82"