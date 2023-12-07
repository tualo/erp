DELIMITER ;
CREATE TABLE IF NOT EXISTS `booking_circle` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_booking_circle_name` (`name`)
) COMMENT='Abrechungskreise, verwendet ua. in der Zusammenfassung von Belegen';

insert ignore into `booking_circle` (`id`, `name`) values (1, 'Hauptbuch') ;