DELIMITER;
CREATE TABLE IF NOT EXISTS `buchungskreise_logins` (
  `buchungskreis_id` varchar(10) NOT NULL,
  `login` varchar(100) NOT NULL,
  `aktiv` tinyint(4) DEFAULT 0,
  `standard` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`buchungskreis_id`,`login`),
  CONSTRAINT `fk_buchungskreise_logins_buchungskreise` FOREIGN KEY (`buchungskreis_id`) REFERENCES `buchungskreise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE OR REPLACE FUNCTION `getSessionDefaultBKR`() RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
RETURN ifnull( (  select buchungskreis_id from buchungskreise_logins where login=getSessionUser() and standard=1 ),'0000');

CREATE OR REPLACE FUNCTION `getSessionCurrentBKR`() RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
RETURN ( SELECT ifnull(@sessionbuchungskreis,getSessionDefaultBKR()) );
