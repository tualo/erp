DELIMITER ;
CREATE TABLE IF NOT EXISTS `lager` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ;
insert ignore into `lager` (`id`, `name`, `status`) values (1, 'unbekannt', 1) ;
