@echo off
echo Installing SVN client...
start /wait msiexec /passive /i "%~dp0packages\Slik-Subversion.msi"

echo Installing Python 2.7.1...
start /wait msiexec /passive /i "%~dp0packages\python.msi"

echo Installing Ruby 1.9.3...
start /wait "" "%~dp0packages\rubyinstaller.exe" /silent

echo Installing Java JDK 1.6 update 35...
start /wait "" "%~dp0packages\jdk.exe" /s

echo Installing .NET Framework 3.5 SP1...
start /wait "" "%~dp0packages\dotnetfx35.exe" /passive

echo Installing .NET Framework 4.0...
start /wait "" "%~dp0packages\dotNetFx40_Full_x86_x64.exe" /passive /norestart

echo Updating PATH environment variable...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%PATH%;%ProgramFiles%\SlikSvn\bin;%ProgramFiles%\Java\jdk1.6.0_35\bin;C:\Python27;C:\Ruby193\bin;%SystemRoot%\Microsoft.NET\Framework\v3.5" /f
