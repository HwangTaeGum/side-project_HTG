$RemoteRepo = "https://github.com/HwangTaeGum/side-project_HTG.git"
$LocalDir = "C:\Side_Project\7z" #맞는 경로로 수정
$Branch = "master"


if (-not (Test-Path -Path $LocalDir)) {
    Write-Output "Creating local directory $LocalDir"
    New-Item -ItemType Directory -Path $LocalDir
}


Set-Location -Path $LocalDir -ErrorAction Stop


if (-not (Test-Path -Path "$LocalDir\.git")) {

    Write-Output "Cloning repository from $RemoteRepo to $LocalDir"
    git clone $RemoteRepo .
}
else {

    Write-Output "Repository already cloned. Pulling latest changes from branch $Branch."
    git pull origin $Branch
}


git status
