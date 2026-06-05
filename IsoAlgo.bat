
@echo off

rem IsoAlgoCmd -h

rem 指定配置选项文件IsoAlgo.opt和SampleIso.pcf文件生成管道ISO图
IsoAlgoCmd -o %~dp0IsoAlgo.opt -p SampleIso.pcf

rem 指定配置选项文件IsoAlgo.opt和SampleIso.idf文件生成管道ISO图
rem IsoAlgoCmd -o %~dp0IsoAlgo.opt -p SampleIso.idf

rem 将图框文件A2.dxf合并到图纸SampleIso.dxf文件中.
rem IsoAlgoCmd -f A2.dwg -m SampleIso_1.dxf

pause
