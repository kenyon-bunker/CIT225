#Test case for Users
USE CIT225Project;

#Create
#Family 1
INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('kenyon.bunker@gmail.com', 'lehi', 'Dad', 'Admin', 0, 1);

INSERT INTO users (email, password, display_name, user_type, user_xp)
VALUES ('alea.bunker@gmail.com', 'lehi', 'Mom,', 'Admin', 0, 1);

INSERT INTO users (email, password, display_name, user_type, user_xp)
VALUES ('derek.bunker@gmail.com', 'lehi', 'Derek,', 'Standard', 0, 1);

INSERT INTO users (display_name, user_type, user_xp)
VALUES ('Mary', 'Child', 0, 1);

#Family 2
INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('lucy.smith@gmail.com', 'lehi', 'Mom', 'Admin', 0, 2);

INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('joseph.smith@gmail.com', 'lehi', 'Dad', 'Admin', 0, 2);

INSERT INTO users (display_name, user_type, user_xp)
VALUES ('Joseph Jr', 'Child', 0, 2);

#Family 3
INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('john.doe@gmail.com', 'lehi', 'Dad', 'Admin', 0, 3);

INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('jane.doe@gmail.com', 'lehi', 'Mom', 'Admin', 0, 3);

INSERT INTO users (display_name, user_type, user_xp)
VALUES ('Jill', 'Child', 0, 3);

INSERT INTO users (display_name, user_type, user_xp)
VALUES ('Joe', 'Child', 0, 3);

#Family 4
INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('john.johnson@gmail.com', 'lehi', 'Dad', 'Admin', 0, 4);

INSERT INTO users (email, password, display_name, user_type, user_xp, household_id)
VALUES ('jill.johnson@gmail.com', 'lehi', 'Mom', 'Admin', 0, 4);

INSERT INTO users (display_name, user_type, user_xp)
VALUES ('Janey', 'Child', 0, 4);

#Read
select * from users;

#Update
update household
SET display_name = 'Jane'
where display_name = 'Janey' and household_id = 4;

#Delete
delete from users
where display_name = 'Joe' and household_id = 3;