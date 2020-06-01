echo $ORACLE_HOME 
echo $ORACLE_SID 
echo x%DATE%x
echo x%TIME%x

SET tarih=%DATE:~-4%_%DATE:~7,2%_%DATE:~4,2%
SET saat=%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
echo x%tarih%x
echo x%saat%x
echo x%tarih%_%TIME%x

SET tarih=%DATE:~-4%_%DATE:~7,2%_%DATE:~4,2%
SET saat=%TIME:~0,2%_%TIME:~3,2%
echo x%tarih%x
echo x%saat%x
echo x%tarih%_%saat%x
pause