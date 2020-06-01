@echo off

set JAVA_HOME_MA=jdk1.8.0_151
echo %JAVA_HOME_MA%
if not exist %JAVA_HOME_MA%/ 7za.exe x %JAVA_HOME_MA%.7z

cmd /c start %JAVA_HOME_MA%/bin/java -jar tcmb-kurlar.jar %JAVA_HOME_MA%/
