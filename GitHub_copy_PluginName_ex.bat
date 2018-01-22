@echo off
//replace PluginName and so on to your plugin name.
set PluginName=PluginName
set GitHubLink=F:\users\smk7758\Documents\GitHub\%PluginName%
set EclipseLink=F:\users\smk7758\Desktop\Minecraft_Server\Build\Plugin_Making\%PluginName%
set M_S=F:\users\smk7758\Desktop\Minecraft_Server\Build
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