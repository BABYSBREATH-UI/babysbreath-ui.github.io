@echo off
chcp 65001 >nul
cd /d %~dp0
set /p SLUG=New post url name (english only, e.g. my-first-post):
tools\hugo\hugo.exe new content content/posts/%SLUG%.md
if exist content\posts\%SLUG%.md (
  echo Created: content\posts\%SLUG%.md  --  now opening in Notepad...
  notepad content\posts\%SLUG%.md
) else (
  echo Failed. The name must have no spaces and no Chinese characters.
)
pause
