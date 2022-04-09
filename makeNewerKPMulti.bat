@echo OFF
GOTO :start



:start
SET mypath=%~dp0
echo adding paths ''%mypath:~0,-1%\tools\devkitPPC\bin'' and ''%mypath:~0,-1%\tools\NewerSMBW-LLVM\bin''
set PATH=%PATH%;%mypath:~0,-1%\tools\devkitPPC\bin;%mypath:~0,-1%\tools\NewerSMBW-LLVM\bin
echo path set.
GOTO :start1



:start1
rmdir /s /q Build
rmdir /s /q NewerASM
mkdir Build
mkdir NewerASM
python tools/mapfile_tool.py
python tools/kamek.py NewerProjectKP.yaml --show-cmd --no-rels --use-clang --show_cmd --gcc-type=tools/devkitPPC/bin/powerpc-eabi --llvm-path=tools/NewerSMBW-LLVM/bin
python tools/renameNewer.py




echo Built all!
set /p inputa=Again?Input 1 ReBuild:
if "%inputa%"=="1" GOTO :start1
pause
exit