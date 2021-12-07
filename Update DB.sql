-- MySQL Workbench Synchronization
-- Generated: 2021-12-07 10:00
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: kenyon.bunker

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `cit225project`.`users` 
DROP FOREIGN KEY `fk_users_household`;

ALTER TABLE `cit225project`.`chores` 
DROP FOREIGN KEY `fk_chores_rewards1`;

ALTER TABLE `cit225project`.`chore_library` 
DROP FOREIGN KEY `fk_chore_library_household1`;

ALTER TABLE `cit225project`.`rewards` 
DROP FOREIGN KEY `fk_rewards_users1`;

ALTER TABLE `cit225project`.`rewards_library` 
DROP FOREIGN KEY `fk_rewards_library_household1`;

ALTER TABLE `cit225project`.`inventory` 
DROP FOREIGN KEY `fk_inventory_users1`;

ALTER TABLE `cit225project`.`announcments` 
DROP FOREIGN KEY `fk_announcments_users1`;

ALTER TABLE `cit225project`.`lists` 
DROP FOREIGN KEY `fk_lists_users1`;

ALTER TABLE `cit225project`.`appointments` 
DROP FOREIGN KEY `fk_appointments_users1`;

ALTER TABLE `cit225project`.`reminders` 
DROP FOREIGN KEY `fk_reminders_users1`;

ALTER TABLE `cit225project`.`list_item` 
DROP FOREIGN KEY `fk_list_item_lists1`;

ALTER TABLE `cit225project`.`users` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
CHANGE COLUMN `email` `email` VARCHAR(50) NULL DEFAULT 'email@email.com' ,
CHANGE COLUMN `password` `password` VARCHAR(30) NULL DEFAULT NULL ;

ALTER TABLE `cit225project`.`chores` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`chore_library` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
ADD COLUMN `rewards_library_idrewards_library` INT(11) NOT NULL AFTER `xp_reward`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`idchore_library`, `household_household_id`, `rewards_library_idrewards_library`),
ADD INDEX `fk_chore_library_rewards_library1_idx` (`rewards_library_idrewards_library` ASC) VISIBLE;
;

ALTER TABLE `cit225project`.`rewards` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`rewards_library` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ,
DROP COLUMN `description`,
ADD COLUMN `desciption` VARCHAR(255) NOT NULL AFTER `name`;

ALTER TABLE `cit225project`.`inventory` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`household` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`announcments` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`lists` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`appointments` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`reminders` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`list_item` 
CHARACTER SET = utf8 , COLLATE = utf8_general_ci ;

ALTER TABLE `cit225project`.`users` 
ADD CONSTRAINT `fk_users_household`
  FOREIGN KEY (`household_id`)
  REFERENCES `cit225project`.`household` (`household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`chores` 
DROP FOREIGN KEY `fk_chores_users1`;

ALTER TABLE `cit225project`.`chores` ADD CONSTRAINT `fk_chores_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_chores_rewards1`
  FOREIGN KEY (`rewards_idrewards`)
  REFERENCES `cit225project`.`rewards` (`idrewards`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`chore_library` 
ADD CONSTRAINT `fk_chore_library_household1`
  FOREIGN KEY (`household_household_id`)
  REFERENCES `cit225project`.`household` (`household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_chore_library_rewards_library1`
  FOREIGN KEY (`rewards_library_idrewards_library`)
  REFERENCES `cit225project`.`rewards_library` (`idrewards_library`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`rewards` 
ADD CONSTRAINT `fk_rewards_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`rewards_library` 
ADD CONSTRAINT `fk_rewards_library_household1`
  FOREIGN KEY (`household_household_id`)
  REFERENCES `cit225project`.`household` (`household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`inventory` 
ADD CONSTRAINT `fk_inventory_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`announcments` 
ADD CONSTRAINT `fk_announcments_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`lists` 
ADD CONSTRAINT `fk_lists_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`appointments` 
ADD CONSTRAINT `fk_appointments_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`reminders` 
ADD CONSTRAINT `fk_reminders_users1`
  FOREIGN KEY (`users_users_id` , `users_household_id`)
  REFERENCES `cit225project`.`users` (`users_id` , `household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `cit225project`.`list_item` 
ADD CONSTRAINT `fk_list_item_lists1`
  FOREIGN KEY (`lists_idlists` , `lists_users_users_id` , `lists_users_household_id`)
  REFERENCES `cit225project`.`lists` (`idlists` , `users_users_id` , `users_household_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
