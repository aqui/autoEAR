cd C:\JAVAKAYNAK\workspace2\Urt5

SET tarih=%DATE:~-4%_%DATE:~7,2%_%DATE:~4,2%
SET saat=%TIME:~0,2%_%TIME:~3,2%
SET arsiv=%tarih%_%saat%

copy C:\JAVAKAYNAK\erp-jboss-4.2.2.GA\server\default\deploy\Urt5.ear D:\EAR_ARSIV\Urt5_%arsiv%.ear

move C:\JAVAKAYNAK\workspace2\Urt5\*.ear C:\JAVAKAYNAK\erp-jboss-4.2.2.GA\server\default\deploy

