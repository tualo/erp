DELIMITER ;
CREATE TABLE IF NOT EXISTS `warenhauptgruppen` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_warenhauptgruppen_name` (`name`)
);
insert ignore into `warenhauptgruppen` (`id`, `name`) values (1, 'unbekannt') ;