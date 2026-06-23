
@echo off

cd /d "%~dp0"

rem IsoAlgoCmd -h

rem 指定配置选项文件IsoAlgo.opt和SampleIso.pcf文件生成管道ISO图
IsoAlgoCmd -o %~dp0IsoAlgo.opt -p SampleIso.pcf

rem 指定配置选项文件IsoAlgo.opt和SampleIso.idf文件生成管道ISO图
rem IsoAlgoCmd -o %~dp0IsoAlgo.opt -p SampleIso.idf

rem 将图框文件A2.dxf合并到图纸SampleIso.dxf文件中.
rem IsoAlgoCmd -f A2.dwg -m SampleIso_1.dxf

rem 将包含PCF/IDF文件的文件夹拖到这个批处理文件上，可以批量出图。
set "ISO_TARGET_DIR=%~1"
set "ISO_OPT_FILE=IsoAlgo.opt"

if "%ISO_TARGET_DIR%"=="" (
    echo 请拖拽包含PCF/IDF文件的文件夹到该 bat 文件上
    pause
    exit /b 1
)

for /r "%ISO_TARGET_DIR%" %%f in (*.pcf *.idf) do (
    echo 处理文件：%%f
    IsoAlgoCmd -p "%%f" -o "%ISO_OPT_FILE%"
)

pause
