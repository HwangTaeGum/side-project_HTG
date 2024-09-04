- 설치 
1. 7z를 설치한다 (https://www.7-zip.org/)
2. C드라이브 안에 Side_Project 폴더를 만든다 ("C:\Side_Project" 경로에 생성)
3. pull_files.ps1을 PowerShell을 이용해 data.zip.xxx 파일을 다운 받는다 (.\pull_files.ps1)
4. merge.bat을 이용해 분리된 7z 파일을 병합한다
5. 병합한 data.zip의 압축을 바탕화면의 데이터 폴더(없을시 생성)에 푼다

- 프로젝트 실행
1. vscode를 실행한다
2. data.zip이 있는 데이터 폴더를 Open한다
3. vscode 터미널을 이용해 my-app 디렉터리로 이동한다(cd my-app)
4. my-app속 가상환경을 활성화한다(venv\Scripts\activate)
5. npm start를 이용해 프로젝트를 실행한다
