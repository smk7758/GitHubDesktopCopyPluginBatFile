@echo off
//replace ## to your own.
set PluginName=##
set GitHubLink=##
set EclipseLink=##\%PluginName%
set M_S=##
choice /N /C YN /M "実行しますか？[Y/N]: "
if errorlevel 2 goto bat_exit
if errorlevel 1 goto copy
//rem 終了コード 1 を処理する場合、ここでします。3 を処理する場合、上の行より前におきます。
:copy
echo D | xcopy %GitHubLink%\.git %M_S%\.git /e /y
rmdir /S /Q %GitHubLink%
echo D | xcopy %EclipseLink% %GitHubLink% /e /y
echo D | xcopy %M_S%\.git %GitHubLink%\.git /e /y
rmdir /S /Q %M_S%\.git
pause
:bat_exit
exit