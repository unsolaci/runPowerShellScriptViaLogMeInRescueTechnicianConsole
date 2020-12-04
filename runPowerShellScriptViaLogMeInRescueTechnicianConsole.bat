@echo off
REM # .VERSION     1.0.0
REM # .DESCRIPTION Execute PowerShell scripts via LogMeIn Rescue Technician Console.
REM # .AUTHOR      Wojciech Ros (code@unsola.ci)
REM # .COPYRIGHT   Copyright (C) Wojciech Ros (code@unsola.ci)
REM # .LICENSEURI  http://www.apache.org/licenses/LICENSE-2.0
REM # .GUID        af95d8c5-be69-41da-9f75-32eacdefc273
REM # 
setlocal EnableDelayedExpansion

REM # Only change these
set                    resourceZipFileName=yourResourceZipFileName.zip
set               powershellScriptFileName=yourPowershellScriptFileName.ps1
set      additionalPowershellExeParameters=-ExecutionPolicy Bypass

REM # Don't change these
set                          cmdScriptRoot=%~dp0
set                          cmdScriptRoot=%cmdScriptRoot:~0,-1%
set                   powershellScriptFile=%cmdScriptRoot%\%powershellScriptFileName%
set                        resourceZipFile=%cmdScriptRoot%\%resourceZipFileName%
REM # Store PowerShell command strings in variables to avoid escape hell and problems due to cmd.exe's quirkiness
set        expandResourceFileCommandString=Expand-Archive -Path '%resourceZipFile%' -DestinationPath '%cmdScriptRoot%' -Force -Verbose
set   executePowershellScriptCommandString='%powershellScriptFile%'

REM # Run PowerShell: expand resourceZipFile and execute powershellScriptFile
powershell.exe %additionalPowershellExeParameters% -Command "& { & %expandResourceFileCommandString% ; & %executePowershellScriptCommandString% }"