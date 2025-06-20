delimiter ;

CREATE TABLE IF NOT EXISTS `hauptkassenbuecher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `aktiv` int(11) DEFAULT NULL,
  `konto` varchar(100) NOT NULL,
  `fibukonto` varchar(10) DEFAULT '100001',
  `hauptkassenbuecher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);