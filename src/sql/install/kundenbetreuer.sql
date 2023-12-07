DELIMITER ;
CREATE TABLE IF NOT EXISTS `kundenbetreuer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(150) NOT NULL,
  `farbe` varchar(20) DEFAULT 'rgb(100,100,100)',
  `login` varchar(100) DEFAULT NULL,
  `calendar` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_kundenbetreuer_name` (`name`)
) ;
insert ignore into `kundenbetreuer` (`id`, `name`, `farbe`, `login`, `calendar`) values ('00000000-0000-0000-0000-000000000000', 'unbekannt', 'rgb(100,100,100)', NULL, 1) ;
