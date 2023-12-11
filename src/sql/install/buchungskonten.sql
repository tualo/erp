DELIMITER ;
CREATE TABLE IF NOT EXISTS `buchungskonten` (
  `konto` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `aktiv` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`konto`)
);