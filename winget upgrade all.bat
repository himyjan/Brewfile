winget upgrade --all
winget export -o %HOMEPATH%/Desktop/winget_export.json
@REM winget import -i %HOMEPATH%/Desktop/winget_export.json