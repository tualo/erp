DELIMITER ;
CREATE TABLE IF NOT EXISTS `rechnungslegung` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
);

insert ignore into `rechnungslegung` (`name`) values ('unbekannt') ;