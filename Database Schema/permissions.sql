USE [master];
GO

CREATE LOGIN MedSynoraUser1 WITH PASSWORD = 'StrongP@ssw0rd!';
GO

USE MedSynora;
GO

CREATE USER MedSynoraUser1 FOR LOGIN MedSynoraUser1;
GO

ALTER ROLE db_datareader ADD MEMBER MedSynoraUser1;
ALTER ROLE db_datawriter ADD MEMBER MedSynoraUser1;
GO
