#Test case for Household
USE CIT225Project;

#Create
INSERT INTO household (name)
VALUES ('Bunkers');

Insert into household (name)
values ('Smiths');

Insert into household (name)
values ('Does');

Insert into household (name)
values ('asdad');

#Read
select * from household;

#Update
update household
SET name = 'Johnsons'
where name = 'asdad';

#Delete
delete from household
where name = 'Johnsons';


