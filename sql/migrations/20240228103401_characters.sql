/* 
* 20240228103401_characters.sql 
*/ 
DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20240228103401');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20240228103401');
-- Add your query below.

CREATE TABLE  IF NOT EXISTS  `ai_playerbot_names` (
	`name_id` MEDIUMINT(8) NOT NULL,
	`name` VARCHAR(12) NULL DEFAULT NULL,
	`gender` TINYINT(3) UNSIGNED NOT NULL,
	PRIMARY KEY (`name_id`),
	UNIQUE INDEX `name_id` (`name_id`)
)
COMMENT='PlayerbotAI RandomBot names'
COLLATE='utf8_general_ci'
ENGINE=MyISAM
ROW_FORMAT=FIXED
;

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;