-- CMS_HR_DB_UPD_02_permission_bizflow.sql

-- privilege on BIZFLOW tables to be used in stored procedure of HHS_CMS_HR schema

GRANT SELECT, INSERT, UPDATE, DELETE ON BIZFLOW.PROCS TO HHS_CMS_HR WITH GRANT OPTION;