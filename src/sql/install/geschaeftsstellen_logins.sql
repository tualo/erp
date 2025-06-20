DELIMITER;

CREATE TABLE IF NOT EXISTS `geschaeftsstellen_logins` (
  `geschaeftsstelle` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `aktiv` tinyint(4) DEFAULT 0,
  `standard` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`geschaeftsstelle`,`login`),
  KEY `idx_geschaeftsstellen_logins_geschaeftsstelle_aktiv` (`geschaeftsstelle`,`aktiv`),
  CONSTRAINT `fk_geschaeftsstellen_logins_buchungskreise` FOREIGN KEY (`geschaeftsstelle`) REFERENCES `geschaeftsstellen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE OR REPLACE  FUNCTION `getSessionCurrentOffice`() RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
RETURN ( SELECT ifnull(@sessionoffice,getSessionDefaultOffice()) );


CREATE OR REPLACE  FUNCTION `getSessionDefaultOffice`() RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
RETURN ifnull( (  select max(geschaeftsstelle) from geschaeftsstellen_logins where login=getSessionUser() and standard=1 ), ifnull( (  select min(geschaeftsstelle) from geschaeftsstellen_logins where login=getSessionUser() ),'0')  );
