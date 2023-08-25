# This is a powershell script
$url = "https://github.com/roboll/helmfile/releases/latest/download/helmfile_windows_amd64.exe"
$output = "helmfile.exe"
Invoke-WebRequest -Uri $url -OutFile $output

$destination = "C:\users\ogunt\helmfile2\helmfile.exe"
$env:Path += ";$destination"

# To confirm the installation
.\helmfile.exe version