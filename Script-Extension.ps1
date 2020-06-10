<# Custom Script for Windows #>
install-windowsfeature -name Web-Server -IncludeManagementTools
set-Location -Path c:\inetpub\wwwroot
Add-Content iisstart.htm `
    "<H1><center>Welcome to Graham's Automated World from $env:COMPUTERNAME</center></H1>"
Invoke-command -ScriptBlock{iisreset}
