CREATE TABLE `character_onedayreward` (
	`player_object_id` INT(11) NOT NULL,
	`id` INT(11) NOT NULL,
	`progress` INT(11) NOT NULL,
	`reset_time` TINYINT(4) NOT NULL,
	`received` TINYINT(4) NOT NULL DEFAULT '0',
	PRIMARY KEY (`player_object_id`, `id`)
);