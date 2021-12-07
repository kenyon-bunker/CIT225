#Test case for chore_library
USE CIT225Project;

#Create
insert into chore_library (household_household_id, name, description, xp_reward, 
rewards_library_idrewards_library)
values (1, 'Clean Bathroom', 'Clean bathroom, includes sink, floor, toilet and tub', 30, 6);

insert into chore_library (household_household_id, name, description, xp_reward, 
rewards_library_idrewards_library)
values (1, 'Clean Bedroom', 'Clean bedroom, put away laundry, make bed', 30, 6);

insert into chore_library (household_household_id, name, description, xp_reward, 
rewards_library_idrewards_library)
values (1, 'Clean Hall', 'Clean hall floor, put away laundry, sweep floor', 30, 7);

insert into chore_library (household_household_id, name, description, xp_reward, 
rewards_library_idrewards_library)
values (2, 'Clean Bathroom', 'Clean bathroom, includes sink, floor, toilet and tub', 30, 8);

insert into chore_library (household_household_id, name, description, xp_reward, 
rewards_library_idrewards_library)
values (2, 'Clean Bedroom', 'Clean bedroom, put away laundry, make bed', 30, 9);

#Read
select * from chore_library;

#Update
update chore_library
SET description = 'Clean hall floor, sweep and mop'
where name = 'Clean Hall' and household_household_id = 1;

#Delete
delete from chore_library
where name = 'Clean Hall' and household_household_id = 1;

