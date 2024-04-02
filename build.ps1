# Clean bin directory
if (Test-Path -Path $PSScriptRoot\bin) { Remove-Item -Path $PSScriptRoot\bin -Recurse -Force -Confirm:$false }

# Publish
dotnet publish -c Release -r win-x64

# Clean up
Remove-Item -Path $PSScriptRoot\bin\Release\net8.0\win-x64\native\LockWorkstation.pdb -Force -Confirm:$false