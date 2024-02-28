CREATE TABLE `ai_playerbot_names` (
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
