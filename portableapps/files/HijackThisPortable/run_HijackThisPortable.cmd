@echo off
rem -------------------------------------------------------------------------
rem Script to start AbiWord Portable
rem Created by Shantanu Sharma
rem -------------------------------------------------------------------------
echo Starting...
setlocal
if "%temp%" == "" goto _err
if exist "%temp%\portableapps\HijackThisPortable\HijackThisPortable.exe" goto _run
echo run_AbiWordPortable.cmd: Copying "%~dp0*.*" to "%temp%\portableapps\HijackThisPortable\"
xcopy /s "%~dp0*.*" "%temp%\portableapps\HijackThisPortable\"
:_run
start %temp%\portableapps\HijackThisPortable\HijackThisPortable.exe
goto _end
:_err
echo.
echo No temp variable set...
echo Try adding a ramdrive...
echo.
pause.
:_end
endlocal
cls
exit