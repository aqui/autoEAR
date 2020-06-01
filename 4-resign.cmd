@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cd C:\JAVAKAYNAK\workspace2\UrtWEB\"Web Content"\GUIJars

SET "JAVA_HOMEE=C:\Program Files (x86)\Java\jdk1.6.0_30"

FOR /R %%X IN (*.sig) DO (
  set temp=%%~nX
  set "str=!temp:~0,100!"
  echo !str!
  "%JAVA_HOMEE%\bin\jar" ufm !str! addToManifest.txt>nul 2>nul
  "%JAVA_HOMEE%\bin\jarsigner" -storetype JKS -keystore IMZA.jks -storepass "" !str! erp -sigalg SHA256withRSA -tsa http://timestamp.comodoca.com/?td=sha256
  @echo !str! imzalandi
  "%JAVA_HOMEE%\bin\jarsigner" -verify !str!
)

@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
cd C:\JAVAKAYNAK\workspace\UrtWEB\"Web Content"\GUIJars
FOR /R %%X IN (*.tmp) DO (
  set temp=%%~nX
  set "str=!temp:~0,100!"
  del !str!.tmp
  echo !str!.tmp
)
