$FileDir = "C:\Side_Project"
$Remote = "origin"
$Branch = "master"


Write-Output "Changing directory to $FileDir"
Set-Location -Path "$FileDir" -ErrorAction Stop


Write-Output "Getting list of all files"
$allFiles = Get-ChildItem -Path "$FileDir" -ErrorAction Stop
Write-Output "Found $($allFiles.Count) files."
$allFiles | ForEach-Object { Write-Output $_.Name }


Write-Output "Filtering files with .7z in the name"
$files = $allFiles | Where-Object { $_.Name -match "\.7z" }
Write-Output "Found $($files.Count) files with .7z in the name."
$files | ForEach-Object { Write-Output $_.Name }


foreach ($file in $files) {
    Write-Output "Processing $($file.Name)"
    try {
        git add $file.Name
        git commit -m "Add $($file.Name)"
        git push $Remote $Branch
    }
    catch {
        Write-Error "An error occurred while processing $($file.Name): $_"
    }
}
