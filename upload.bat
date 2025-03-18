@echo off
REM Read the first and second lines from the .config file
set configFile=project.config
setlocal enabledelayedexpansion
set lineNumber=0
for /f "tokens=*" %%A in (%configFile%) do (
    set /a lineNumber+=1
    if !lineNumber! equ 1 set firstLine=%%A
    if !lineNumber! equ 2 set secondLine=%%A
    if !lineNumber! gtr 2 goto done
)
:done
endlocal & set "firstLine=%firstLine%" & set "secondLine=%secondLine%"

REM Define the source directory and the destination directory
set sourceDir=G:\Project\MOD\factorio\AMES\project
set destDir=%APPDATA%\Factorio\mods

REM Create the zip file with the formatted name
set zipFile=%firstLine%_%secondLine%.zip
powershell Compress-Archive -Path "%sourceDir%\*" -DestinationPath %zipFile%

REM Copy the zip file to the destination directory
copy %zipFile% %destDir%

REM Copy the project folder to the destination directory and rename it
xcopy /E /I %sourceDir% %destDir%\%firstLine%_%secondLine%

echo Project has been compressed and uploaded successfully.
pause
