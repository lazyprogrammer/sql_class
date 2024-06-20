-- Example of dropping a column (new in SQLite 3.35.0)

-- create table
create table mytable (first_name text, last_name text, email text);

-- check schema
-- .schema mytable

-- insert dummy data
insert into mytable (first_name, last_name, email) values ('Alice', 'In Chains', 'alice@gmail.com');
insert into mytable (first_name, last_name, email) values ('Bob', 'Baker', 'bob@gmail.com');

-- format nicely
-- .mode table

-- look at the data
select * from mytable;

-- drop column
alter table mytable drop column email;

-- look at the data again (email is gone)
select * from mytable;

-- check schema again
-- .schema mytable

-- clean up table
drop table mytable;