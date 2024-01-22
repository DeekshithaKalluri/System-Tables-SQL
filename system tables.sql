use INDIAN_BANK

--all tables info
--system table
select * from sys.tables

--how many tables
select count(*) as nooftables from sys.tables

--all cols in a db
select * from sys.columns where object_id = 3

--find out no of cols in the table
select count(*) as noofcols from sys.columns where object_id = 3

--colName
--Identify the table
select b.name as TableNm, a.name as ColName
from sys.columns as a join sys.tables as b on a.object_id = b.object_id
where a.name = 'cbal'

--check emp table exists or not
if exists (select * from sys.tables where name = 'emp')
	drop table emp
--and then create table emp

--all db name
select * from sys.databases

--if exists, u drop it
if exists (select * from sys.databases where name = 'School')
	drop database School
go
create database School

--all sp(store procedures)
select * from sys.procedures

--all triggers
select * from sys.triggers

