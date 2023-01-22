USE [master]
RESTORE DATABASE [master] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\master.bak' WITH  FILE = 2,  NOUNLOAD,  STATS = 5

GO


create database test;
use test;
