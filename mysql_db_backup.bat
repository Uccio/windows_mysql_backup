ECHO ON
set adesso=%date:~-4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%%time:~6,2%
SET backup_path="c:\Backup_DB"
SET databaselist = "mydb1 mydb2"

mysqldump -ubackup -plamiapassword --databases %databaselist%  > %BACKUP_PATH%\backup-%ADESSO%.sql
ROBOCOPY %BACKUP_PATH% c:\tmp\oldfiles /mov /minage:90
del C:\tmp\oldfiles /q
