@echo off
chcp 65001 >nul
cd /d %~dp0
echo.
echo   本地预览已启动，请在浏览器打开:  http://localhost:1313
echo   停止预览: 在本窗口按 Ctrl+C
echo.
tools\hugo\hugo.exe server -D --navigateToChanged
