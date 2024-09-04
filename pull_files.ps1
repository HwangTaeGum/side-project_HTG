$RemoteRepo = "https://github.com/HwangTaeGum/side-project_HTG.git"
$LocalDir = "C:\Side_Project"
$Branch = "master"

# 로컬 디렉토리가 존재하지 않으면 생성
if (-not (Test-Path -Path $LocalDir)) {
    Write-Output "Creating local directory $LocalDir"
    New-Item -ItemType Directory -Path $LocalDir
}

# 로컬 디렉토리로 이동
Set-Location -Path $LocalDir -ErrorAction Stop

# GitHub 저장소가 클론되어 있는지 확인
if (-not (Test-Path -Path "$LocalDir\.git")) {
    # 클론되지 않은 경우 클론 수행
    Write-Output "Cloning repository from $RemoteRepo to $LocalDir"
    git clone $RemoteRepo .
}
else {
    # 이미 클론된 경우 최신 상태로 업데이트
    Write-Output "Repository already cloned. Pulling latest changes from branch $Branch."
    git pull origin $Branch
}

# Git 상태 확인
git status
