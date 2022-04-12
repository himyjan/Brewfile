@echo off
if _%1_==_payload_  goto :payload

:getadmin
    echo %~nx0: elevating self
    set vbs=%temp%\getadmin.vbs
    echo Set UAC = CreateObject^("Shell.Application"^)                >> "%vbs%"
    echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
goto :eof

:payload

::ENTER YOUR CODE BELOW::

:: Install choco .exe and add choco to PATH
reg add HKLM\SOFTWARE\Microsoft\.NETFramework\v4.0.30319 /v SystemDefaultTlsVersions /t REG_DWORD /d 1 /f /reg:64
@powershell -Command "& {Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord; Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type DWord}"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n=allowGlobalConfirmation
:: choco feature disable -n=allowGlobalConfirmation

:: Install all the packages
choco install chocolateygui -fy
choco install line -fy
:: choco install google-drive-file-stream -fy
:: choco install onedrive -ignorechecksum -fy
:: choco install epicgameslauncher -fy
:: choco install ./Chocolatey_Package_Backup.config -fy

:::: Browsers
:: choco install googlechrome -fy
:: choco install microsoft-edge -fy
:: choco install firefox -fy

:::: Text editors / IDEs
:: choco install atom -fy
:: choco install sublimetext3 -fy
:: choco install visualstudiocode -fy
:: choco install visualstudio2015community -fy

:::: Dev tools
:: choco install git -fy
:: choco install nodejs.install -fy

:::: Media
:: choco install vlc -fy

:::: Utilities + other
:: choco install 7zip.install -fy
:: choco install dropbox -fy
:: choco install slack -fy
:: choco install office365proplus -fy

::END OF YOUR CODE::

echo.
echo...Script Complete....
echo.

pause