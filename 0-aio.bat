taskkill /im eclipse.exe
ping 127.0.0.1 -n 15 > nul
call C:\AUTO_EAR\CMD\1-cvs.cmd
ping 127.0.0.1 -n 5 > nul
call C:\AUTO_EAR\CMD\2-build.cmd
ping 127.0.0.1 -n 15 > nul
call C:\AUTO_EAR\CMD\3-sign.cmd
ping 127.0.0.1 -n 5 > nul
call C:\AUTO_EAR\CMD\4-resign.cmd
ping 127.0.0.1 -n 10 > nul
call C:\AUTO_EAR\CMD\5-ear.cmd
ping 127.0.0.1 -n 15 > nul
rem servisi durdur
net stop JBAS50SVC
ping 127.0.0.1 -n 15 > nul
call C:\AUTO_EAR\CMD\7-move.cmd
rem servisi başlat
net start JBAS50SVC
