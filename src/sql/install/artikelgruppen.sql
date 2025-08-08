DELIMITER ;
CREATE TABLE IF NOT EXISTS `artikelgruppen` (
  `gruppen_id` int(11) NOT NULL,
  `gruppe` varchar(255) NOT NULL,
  `kurztext` varchar(30) NOT NULL DEFAULT '',
  `warengruppe` int(11) NOT NULL DEFAULT 1,
  `artikelnummer` varchar(20) NOT NULL DEFAULT '',
  `bestandsartikel` tinyint(4) NOT NULL DEFAULT 0,
  `system` tinyint(4) NOT NULL DEFAULT 0,
  `kommission` tinyint(4) NOT NULL  DEFAULT 0,
  `gebinde` tinyint(4) NOT NULL DEFAULT 0,
  `zusatztext` varchar(4000) DEFAULT NULL,
  `bemerkung` varchar(4000) DEFAULT NULL,
  `plugin` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `ingebrauch` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'wird gesetzt, sobald der Artikel mit dieser Bezeichnung in einer Belegart verwendet wird',
  `verkaufszeitraum_von` date NOT NULL DEFAULT '2000-01-01' COMMENT 'Verkaufszeitraum Zeitraum',
  `verkaufszeitraum_bis` date NOT NULL DEFAULT '2099-12-31' COMMENT 'Verkaufszeitraum Zeitraum',
  `averkaufszeitraum_von` date NOT NULL DEFAULT '2000-01-01' COMMENT 'administrativer Verkaufszeitraum Zeitraum',
  `averkaufszeitraum_bis` date NOT NULL DEFAULT '2099-12-31' COMMENT 'administrativer Verkaufszeitraum Zeitraum',
  `einheit` int(11) NOT NULL DEFAULT 1,
  `login` varchar(255) DEFAULT NULL,
  `max_anzahl` int(11) DEFAULT 999999,
  `max_weight` decimal(15,6) DEFAULT 99999.000000,
  `max_height` decimal(15,6) DEFAULT 99999.000000,
  `max_length` decimal(15,6) DEFAULT 99999.000000,
  `max_thickness` decimal(15,6) DEFAULT 99999.000000,
  `konto_id` int(11) NOT NULL DEFAULT 0,


  PRIMARY KEY (`gruppen_id`),
    UNIQUE KEY `uidx_artikelgruppen_gruppe` (`gruppe`),

    KEY `idx_artikelgruppen_warengruppe` (`warengruppe`),
    KEY `idx_artikelgruppen_max_anzahl` (`max_anzahl`),
    KEY `idx_artikelgruppen_einheit` (`einheit`),
    KEY `fk_artikelgruppen_konto_id` (`konto_id`),
    KEY `idx_artikelgruppen_status` (`status`),
    CONSTRAINT `fk_artikelgruppen_einheit` FOREIGN KEY (`einheit`) REFERENCES `mengeneinheiten` (`id`) ON UPDATE CASCADE,
    CONSTRAINT `fk_artikelgruppen_konto_id` FOREIGN KEY (`konto_id`) REFERENCES `bfkonten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `fk_artikelgruppen_warengruppe` FOREIGN KEY (`warengruppe`) REFERENCES `warengruppen` (`id`) ON UPDATE CASCADE
);


delimiter //
CREATE OR REPLACE TRIGGER `artikelgruppen_setup_defaults_ai` 
AFTER UPDATE ON `artikelgruppen` FOR EACH ROW
BEGIN

    IF NOT EXISTS(
        select 
            `gruppe` 
        from `staffeln` 
        where `gruppe` = NEW.gruppe
    ) THEN
        
        
        insert into `staffeln` (`gruppe`) values (NEW.gruppe);

    END IF;

    IF NOT EXISTS(
        select 
            `gruppe` 
        from `bfkonten_zuordnung` 
        where `gruppe` = NEW.gruppe
    ) THEN
        
        
        
        insert into `bfkonten_zuordnung` (`gruppe`,`konto_id`) values (NEW.gruppe, NEW.konto_id);

    END IF;

END //
