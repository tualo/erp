delimiter ;

CREATE TABLE `laendercodes` (
  `code` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`code`)
) COMMENT='Verfügbare Länderschlüssel';




