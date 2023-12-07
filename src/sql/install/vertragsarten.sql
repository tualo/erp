DELIMITER ;
CREATE TABLE IF NOT EXISTS `vertragsarten` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_vertragsarten_name` (`name`)
);
insert ignore into `vertragsarten` (`id`, `name`) values ('00000000-0000-0000-0000-000000000000', 'unbekannt') ;