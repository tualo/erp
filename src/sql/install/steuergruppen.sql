DELIMITER ;
CREATE TABLE IF NOT EXISTS `steuergruppen` (
  `steuergruppe` varchar(25) NOT NULL,
  `feld` varchar(20) DEFAULT NULL,
  `bezeichnung` varchar(100) DEFAULT NULL,
  `aktiv` tinyint(4) DEFAULT 0,
  `sap_kennzeichen` varchar(5) DEFAULT 'A',
  `position` int(11) DEFAULT 999,
  PRIMARY KEY (`steuergruppe`),
  UNIQUE KEY `idx_steuergruppen_feld` (`feld`)
);
insert ignore into `steuergruppen`
 (`steuergruppe`, `feld`, `bezeichnung`, `aktiv`, `sap_kennzeichen`, `position`) 
 values ('normalbesteuert', '', 'normalbesteuert', 1, 'A', 1) ;