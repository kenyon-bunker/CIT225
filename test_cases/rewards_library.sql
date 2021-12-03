#Test case for rewards_library
USE CIT225Project;

#Create
insert into rewards_library (household_household_id, name, description)
values (1, 'Walk with the family', 'Go on a walk with the family');

insert into rewards_library (household_household_id, name, description)
values (1, 'Ice Cream', 'Go get some ice cream with mom or dad');

insert into rewards_library (household_household_id, name, description)
values (1, 'Play game', 'Play game with family');

insert into rewards_library (household_household_id, name, description)
values (2, 'Walk with the family', 'Go on a walk with the family');

insert into rewards_library (household_household_id, name, description)
values (2, 'Ice Cream', 'Go get some ice cream with mom or dad');

#Read
select * from rewards_library;

#Update
update rewards_library
SET name = 'Play Minecraft'
where name = 'Play game' and household_id = 1;

#Delete
delete from rewards_library
where name = 'Play game' and household_id = 1;