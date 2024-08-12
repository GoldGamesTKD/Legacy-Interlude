CREATE TABLE IF NOT EXISTS `items_delayed` (
	`payment_id` INT NOT NULL auto_increment,
	`owner_id` INT NOT NULL,
	`item_id` INT NOT NULL,
	`count` INT UNSIGNED NOT NULL DEFAULT '1',
	`enchant_level` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    `variationId1` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
    `variationId2` SMALLINT UNSIGNED NOT NULL DEFAULT '0',
	`attribute` SMALLINT NOT NULL DEFAULT '-1',
	`attribute_level` SMALLINT NOT NULL DEFAULT '-1',
	`flags` INT NOT NULL DEFAULT '0',
	`payment_status` TINYINT UNSIGNED NOT NULL DEFAULT '0',
	`description` VARCHAR(255) DEFAULT NULL,
	PRIMARY KEY (`payment_id`),
	KEY `key_owner_id` (`owner_id`),
	KEY `key_item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELIMITER $$

DROP PROCEDURE IF EXISTS `lip_ItemsDelayedAdd` $$
CREATE PROCEDURE `lip_ItemsDelayedAdd`
(IN iOwnerID INT,
 IN iItemId INT,
 IN iCount INT unsigned,
 IN iEnchantLevel smallint unsigned,
 IN iVariation1 smallint unsigned,
 IN iVariation2 smallint unsigned,
 IN sDescription varchar(255)
)
BEGIN
	DECLARE iPaymentID INT DEFAULT 0;
	SELECT MAX(`payment_id`) + 1 INTO iPaymentID FROM `items_delayed`;
	INSERT LOW_PRIORITY INTO `items_delayed`
	(
		`payment_id`,
		`owner_id`,
		`item_id`,
		`count`,
		`enchant_level`,
		`variationId1`,
		`variationId2`,
		`description`
	)
	VALUES
		(
			iPaymentId,
			iOwnerId,
			iItemId,
			iCount,
			iEnchantLevel,
			iVariation1,
			iVariation2,
			sDescription
		);
END $$

DROP PROCEDURE IF EXISTS `lip_LoadItemsDelayedByOwnerAndStatus` $$
CREATE PROCEDURE `lip_LoadItemsDelayedByOwnerAndStatus`(IN iOwnerId INT,
														IN iPaymentStatus INT)
BEGIN
	SELECT
		`item_id` AS `item_id`,
		`count` AS `count`,
		`enchant_level` AS `enchant_level`,
		`variationId1` AS `variationId1`,
		`variationId2` AS `variationId2`,
		`payment_id` AS `payment_id`,
		`flags` AS `flags`
	FROM
		`items_delayed`
	WHERE
			`owner_id` = iOwnerId
	  AND
			`payment_status` = iPaymentStatus;
END $$

DROP PROCEDURE IF EXISTS `lip_UpdateItemsDelayedPaymentStatus` $$
CREATE PROCEDURE lip_UpdateItemsDelayedPaymentStatus(IN iPaymentID INT,
													 IN iPaymentStatus INT)
BEGIN
	UPDATE LOW_PRIORITY `items_delayed`
	SET `payment_status` = iPaymentStatus
	WHERE `payment_id` = iPaymentID;
END $$

DROP PROCEDURE IF EXISTS `lip_GetItemsDelayedMaxPaymentId` $$
CREATE PROCEDURE lip_GetItemsDelayedMaxPaymentId()
BEGIN
	SELECT MAX(`payment_id`) AS `last` FROM `items_delayed`;
END $$

DROP PROCEDURE IF EXISTS `lip_LoadItemsDelayedOwners` $$
CREATE PROCEDURE lip_LoadItemsDelayedOwners(IN iPaymentId INT)
BEGIN
	SELECT
		DISTINCT `owner_id` AS `owner_id`
	FROM `items_delayed`
	WHERE `payment_status` = 0 AND `payment_id` > iPaymentId;
END $$

DELIMITER ;