REM This bat script automatically sets the correst path to Hugo, it builds the website, and it opens a browser to the local website

set PATH=%PATH%;C:\Workdir\Programs\Hugo\hugo_extended_0.119.0_windows-amd64
start http://localhost:1313/
REM run 'hugo' to write the public/ folder to disk, otherwise it is just kept in RAM memory
hugo server --disableFastRender
pause
