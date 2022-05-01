@echo off
@REM set mkvmerge="D:\Programas\mkvtoolnix\mkvmerge.exe"
set mkvmerge="C:\Software\mkvtoolnix\mkvmerge.exe"
if not exist "options.json" (
    echo Options file 'options.json' not found. Exiting.
    pause>nul
    exit
)
if not exist "mkvmerge_out" (mkdir "mkvmerge_out")
for %%f in (*.mkv) do %mkvmerge% @options.json -o "mkvmerge_out/%%f" "%%f"
echo.
echo ============================
echo Done. Press any key to exit.
pause>nul
exit