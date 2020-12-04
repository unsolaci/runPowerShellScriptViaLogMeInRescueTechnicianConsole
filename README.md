# runPowerShellScriptViaLogMeInRescueTechnicianConsole
Execute PowerShell scripts via _LogMeIn Rescue Technician Console_ on Windows.


## Usage
1. Prepare a zip file, containing the PowerShell script that you wish to execute and any resources/dependencies.
Contents of this archive will be extracted to the same folder, where _LogMeIn Rescue Technician Console_ stores batch script files.

2. Modify below section of [runPowerShellScriptViaLogMeInRescueTechnicianConsole.bat](runPowerShellScriptViaLogMeInRescueTechnicianConsole.bat)
file to reflect your file names:
```winbatch
REM # Only change these
set                    resourceZipFileName=yourResourceZipFileName.zip
set               powershellScriptFileName=yourPowershellScriptFileName.ps1
```

3. Add a new script in the _LogMeIn Rescure Technician Console_(`Tools / Manage Scripts... / Add New`),
and fill out the following fields:

Field         | Value
------------- | ------------------------------------------------------------------
Script file   | path to `runPowerShellScriptViaLogMeInRescueTechnicianConsole.bat`
Resource file | path to the zip file prepared in point 1.


## Author
- Wojciech Ros (code@unsola.ci)

## License
Apache 2.0 - see [LICENSE](LICENSE).
