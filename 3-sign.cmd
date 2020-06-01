cd "C:\JAVAKAYNAK\workspace2\UrtWEB\""Web Content"\GUIJars

SET "JAVA_HOMEE=C:\Program Files (x86)\Java\jdk1.6.0_30"

FOR %%G IN (*.jar) DO 7za.exe d %%G *.RSA -r
FOR %%G IN (*.jar) DO 7za.exe d %%G *.SF -r
cls
FOR %%G IN (*.jar) DO ("%JAVA_HOMEE%\bin\jar" ufm %%G addToManifest.txt>nul 2>nul & "%JAVA_HOMEE%\bin\jarsigner" -storetype JKS -keystore IMZA.jks -storepass "" %%G "" -sigalg SHA256withRSA -tsa http://timestamp.comodoca.com/?td=sha256 & @echo %%G & "%JAVA_HOMEE%\bin\jarsigner" -verify %%G)

SETLOCAL ENABLEDELAYEDEXPANSION
cd C:\JAVAKAYNAK\workspace2\UrtWEB\"Web Content"\GUIJars
FOR /R %%X IN (*.sig) DO (
  set temp=%%~nX
  set "str=!temp:~0,100!"
  echo !str!
  "%JAVA_HOMEE%\bin\jar" ufm !str! addToManifest.txt>nul 2>nul
  "%JAVA_HOMEE%\bin\jarsigner" -storetype JKS -keystore IMZA.jks -storepass "" %1 "" -sigalg SHA256withRSA -tsa http://timestamp.comodoca.com/?td=sha256
  @echo !str! imzalandi
  "%JAVA_HOMEE%\bin\jarsigner" -verify !str!
)
