@echo off

ECHO Merkez Bankası Kur Getirme Baslıyor.
call startup-tcmb.bat -b 127.0.0.1

ECHO Ear deploy ediliyor!
cd C:\JAVAKAYNAK\erp-jboss-4.2.2.GA\
call start3.bat -b 10.9.9.42
