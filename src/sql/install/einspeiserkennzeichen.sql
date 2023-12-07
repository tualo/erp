DELIMITER ;
CREATE TABLE IF NOT EXISTS `einspeiserkennzeichen` (
  `id` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

insert ignore into `einspeiserkennzeichen` (`id`, `name`) values ('1', 'unbekannt') ;
