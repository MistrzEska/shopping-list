USE master;

IF DB_ID('Shopping_List_Database') IS NOT NULL
BEGIN
	alter database [Shopping_List_Database] set single_user with rollback immediate;
	DROP DATABASE [Shopping_List_Database];
END;
	
CREATE DATABASE [Shopping_List_Database];