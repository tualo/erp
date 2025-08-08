DELIMITER ;
CREATE TABLE IF NOT EXISTS `adressen` (
  `kundennummer` varchar(10) NOT NULL,
  `kostenstelle` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT '',
  `aktiv` int(11) DEFAULT NULL,
  `inhaber` varchar(255) DEFAULT '',
  `inhaber_anzeigen` tinyint(4) DEFAULT 1,
  `firma` varchar(255) DEFAULT '',
  `nachname` varchar(255) DEFAULT '',
  `zusatz` varchar(255) DEFAULT '',
  `zusatz2` varchar(255) DEFAULT '',
  `zusatz3` varchar(255) DEFAULT '',
  `strasse` varchar(255) DEFAULT '',
  `plz` varchar(5) DEFAULT '',
  `ort` varchar(255) DEFAULT '',
  `ortsteil` varchar(255) DEFAULT '',
  `steuerschluessel` varchar(25) DEFAULT 'normalbesteuert',
  `lc` varchar(3) DEFAULT 'DE',
  `telefon` varchar(50) DEFAULT '',
  `telefax` varchar(50) DEFAULT '',
  `zahlungsschluessel` varchar(10) DEFAULT '0003',
  `booking_circle` int(11) DEFAULT 1,
  `preiskategorie` int(11) DEFAULT 1,
  `zahlungsart` int(11) DEFAULT 1,
  `bic` varchar(20) DEFAULT '',
  `iban` varchar(50) DEFAULT '',
  `bankland` varchar(20) DEFAULT 'DE',
  `einspeiserkennzeichen` varchar(5) DEFAULT '',
  `sync_kundennummer` varchar(255) DEFAULT NULL,
  `sync_kostenstelle` int(11) DEFAULT NULL,

  `haus_nr` varchar(255) DEFAULT '',
  `vorname` varchar(255) DEFAULT '',
  `postid` varchar(255) DEFAULT '',
  `alte_kundennummer` longtext DEFAULT '',
  `s_knr` varchar(255) DEFAULT NULL,
  `rechnungslegung` varchar(20) DEFAULT NULL,
  `zahlungsziel` int(11) DEFAULT 10,
  `steuernummer` varchar(20) DEFAULT '',
  `ustid` varchar(20) DEFAULT '',
  `endkunde` tinyint(4) DEFAULT 0,
  `intercompany` tinyint(4) DEFAULT 0,
  `geschaeftsstatus` varchar(25) DEFAULT 'Normalkunde',
  `kundenupoc` varchar(25) DEFAULT '',
  `cliche` int(11) DEFAULT NULL,
  `telefon2` varchar(100) DEFAULT '',
  `telefon3` varchar(100) DEFAULT '',
  `rechnungsdruck` varchar(255) DEFAULT 'keinen',
  `rechnungssperre` tinyint(4) DEFAULT 0,

  `kundenbetreuer` varchar(36) DEFAULT NULL,
  `vertragsart` varchar(36) DEFAULT '0',
  `vertragsende` date DEFAULT '2099-12-31',
  `gesondert_zusammenfassen` tinyint(4) DEFAULT 0,
  `email` varchar(255) DEFAULT '',
  `duns` varchar(9) DEFAULT '',
  `quelle` varchar(30) DEFAULT 'Bestandsdaten',
  `firmennummer` varchar(10) DEFAULT '',
  `website` varchar(100) DEFAULT '',
  `rechnungssperre_text` varchar(255) DEFAULT NULL,
  `feingrund` int(11) DEFAULT 0,

  `kundengruppe` varchar(50) DEFAULT '',
  `leitid` varchar(50) DEFAULT '',
  `kostenstellenupoc` varchar(20) DEFAULT NULL,
  `adressen_anzeige` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kundennummer`,`kostenstelle`),
  KEY `idx_adressen_steuerschluessel` (`steuerschluessel`),
  KEY `idx_adressen_laendercodes` (`lc`),
  KEY `idx_adressen_zahlungsschluessel` (`zahlungsschluessel`),
  KEY `idx_adressen_booking_circle` (`booking_circle`),
  KEY `idx_adressen_preiskategorie` (`preiskategorie`),
  KEY `idx_adressen_zahlungsarten` (`zahlungsart`),
  KEY `idx_adressen_einspeiserkennzeichen` (`einspeiserkennzeichen`),

  KEY `idx_adressen_s_knr` (`s_knr`),
  KEY `fk_adressen_geschaeftsstatus` (`geschaeftsstatus`),
  KEY `fk_adressen_rechnungsdruck` (`rechnungsdruck`),

  KEY `idx_adressen_kundenbetreuer` (`kundenbetreuer`),
  KEY `fk_adressen_vertragsarten` (`vertragsart`),
  KEY `idx_adressen_rechnungslegung` (`rechnungslegung`),

  KEY `idx_adressen_kundengruppe` (`kundengruppe`),
  KEY `idx_adressen_kundennummer` (`kundennummer`),
  KEY `idx_adressen_upocs` (`kundenupoc`,`kostenstellenupoc`),
  FULLTEXT KEY `fidx_adressen_firma` (`firma`),
  FULLTEXT KEY `fidx_adressen_nachname` (`nachname`),
  FULLTEXT KEY `fidx_adressen_name` (`name`),
  FULLTEXT KEY `fidx_adressen_ort` (`ort`),
  CONSTRAINT `fk_adressen_booking_circle` FOREIGN KEY (`booking_circle`) REFERENCES `booking_circle` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_einspeiserkennzeichen` FOREIGN KEY (`einspeiserkennzeichen`) REFERENCES `einspeiserkennzeichen` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_geschaeftsstatus` FOREIGN KEY (`geschaeftsstatus`) REFERENCES `geschaeftsstatus` (`geschaeftsstatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_kundenbetreuer` FOREIGN KEY (`kundenbetreuer`) REFERENCES `kundenbetreuer` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_preiskategorie` FOREIGN KEY (`preiskategorie`) REFERENCES `preiskategorien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,

  CONSTRAINT `fk_adressen_rechnungsdruck` FOREIGN KEY (`rechnungsdruck`) REFERENCES `rechnungsdruck` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_rechnungslegung` FOREIGN KEY (`rechnungslegung`) REFERENCES `rechnungslegung` (`name`) ON UPDATE CASCADE,

  CONSTRAINT `fk_adressen_steuerschluessel` FOREIGN KEY (`steuerschluessel`) REFERENCES `steuergruppen` (`steuergruppe`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_vertragsarten` FOREIGN KEY (`vertragsart`) REFERENCES `vertragsarten` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_zahlungsarten` FOREIGN KEY (`zahlungsart`) REFERENCES `zahlungsarten` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_adressen_zahlungsschluessel` FOREIGN KEY (`zahlungsschluessel`) REFERENCES `zahlungsschluessel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_booking_circle` FOREIGN KEY (`booking_circle`) REFERENCES `booking_circle` (`id`)
) COMMENT='Kundenstamm';

alter table `adressen` add column if not exists `firma` varchar(255) NOT NULL DEFAULT '';

CREATE VIEW IF not exists `view_readtable_adressen` AS
select
    `adressen`.*,
    trim(
        concat(
            ifnull(`adressen`.`name`, ''),
            ' ',
            ifnull(`adressen`.`firma`, ''),
            ' ',
            ifnull(`adressen`.`vorname`, ''),
            ' ',
            ifnull(`adressen`.`nachname`, '')
        )
    ) AS `_shortname`,
    concat(
        ifnull(`adressen`.`name`, ''),
        ' ',
        ifnull(`adressen`.`firma`, ''),
        ' ',
        ifnull(`adressen`.`nachname`, ''),
        ' #',
        ifnull(`adressen`.`kundennummer`, '')
    ) AS `anzeigen_name`
from
    `adressen`;


DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen_adressen_umsatz_ai` AFTER INSERT ON `adressen` FOR EACH ROW
BEGIN
    insert ignore into `adressen_umsatz`(`kundennummer`,`kostenstelle`) values (new.kundennummer,new.kostenstelle);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen_suchindex_ai` 
AFTER INSERT ON `adressen` FOR EACH ROW
BEGIN
    insert into `adressen_suche` (`kundennummer`,`kostenstelle`,`adressen_anzeige`)
    select 
        `adressen`.kundennummer,
        `adressen`.kostenstelle,
        substring( concat(
            ifnull(`adressen`.`firma`, ''),
            ' ',
            ifnull(`adressen`.`name`, ''),
            ' ',
            ifnull(`adressen`.`vorname`, ''),
            ' ',
            ifnull(`adressen`.`zusatz`, ''),
            ' ',
            ifnull(`adressen`.`nachname`, ''),
            ' ',
            ifnull(`adressen`.`strasse`, ''),
            ' ',
            ifnull(`adressen`.`haus_nr`, ''),
            ' ',
            ifnull(`adressen`.`plz`, ''),
            ' ',
            ifnull(`adressen`.`ort`, ''),
            ' #',
            `adressen`.`kundennummer`,
            ' ',
            group_concat(
                concat(
                    '#',
                    ifnull(
                        concat(
                            `adressen_geschaeftsstellen`.`alte_kundennummer`,
                            'Z',
                            `adressen`.`kostenstelle`
                        ),
                        ''
                    )
                ) separator ', '
            ),
            ' ',
            group_concat(
                concat(
                    '#',
                    ifnull(
                        `adressen_geschaeftsstellen`.`alte_kundennummer`,
                        ''
                    )
                ) separator ', '
            ),
            ' (',
            `adressen`.`kostenstelle`,
            ')'
        ),1,255) AS `adressen_anzeige`
    from 
        `adressen`
        left join `adressen_geschaeftsstellen`
            on (`adressen`.kundennummer,`adressen`.kostenstelle) = (`adressen_geschaeftsstellen`.kundennummer,`adressen_geschaeftsstellen`.kostenstelle)
            and `adressen_geschaeftsstellen`.aktiv=1
    where (`adressen`.kundennummer,`adressen`.kostenstelle) = (new.kundennummer,new.kostenstelle)
group by `adressen`.kundennummer,`adressen`.kostenstelle
    on duplicate key update adressen_anzeige=values(adressen_anzeige);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__ai_mat_art` AFTER INSERT ON `adressen` FOR EACH ROW
BEGIN
  delete from mat_view_preisliste_adressen where kundennummer=NEW.kundennummer and kostenstelle=NEW.kostenstelle;
  REPLACE into mat_view_preisliste_adressen select * from view_preisliste_adressen where kundennummer=NEW.kundennummer and kostenstelle=NEW.kostenstelle;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__ai_gst` AFTER INSERT ON `adressen` FOR EACH ROW
BEGIN
	if (@not_use_adressen_mat_trigger is null or @not_use_adressen_mat_trigger=0) THEN
  IF NOT EXISTS( select * from adressen_geschaeftsstellen WHERE adressen_geschaeftsstellen.kundennummer = NEW.kundennummer and adressen_geschaeftsstellen.kostenstelle = NEW.kostenstelle and adressen_geschaeftsstellen.aktiv=1) THEN
   INSERT INTO adressen_geschaeftsstellen
   (
	kundennummer,
	kostenstelle,
	geschaeftsstelle,
	aktiv
   ) VALUES (
     NEW.kundennummer,
   NEW.kostenstelle,
     getSessionCurrentOffice(),
     1
   )
   ON DUPLICATE KEY UPDATE aktiv=values(aktiv);
   
  END IF;
    END IF;
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__ai_bkr` AFTER INSERT ON `adressen` FOR EACH ROW
BEGIN

if (@not_use_adressen_mat_trigger is null or @not_use_adressen_mat_trigger=0) THEN
  IF NOT EXISTS( select * from adressen_buchungskreise WHERE adressen_buchungskreise.kundennummer = NEW.kundennummer and 
                adressen_buchungskreise.kostenstelle = NEW.kostenstelle and adressen_buchungskreise.aktiv=1) THEN
   INSERT INTO adressen_buchungskreise
   (
	kundennummer,
	kostenstelle,
	buchungskreis,
	aktiv
   ) VALUES (
     NEW.kundennummer,
   NEW.kostenstelle,
     getSessionCurrentBKR(),
     1
   )
   ON DUPLICATE KEY UPDATE aktiv=values(aktiv);
   
  END IF;
  
  END IF;
  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen_zb__bu` BEFORE UPDATE ON `adressen` FOR EACH ROW
BEGIN
	IF new.zahlungsschluessel='2018' and old.zahlungsschluessel<>'2018' and NOT EXISTS(select `group` from VIEW_SESSION_GROUPS where `group`='zahlungsbedingung_skonto') THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Diese Zahlungsbedingung ist Ihnen nicht erlaubt';
    END IF;
    SET new.zahlungsziel = (select tage from zahlungsschluessel where id = new.zahlungsschluessel);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__au` AFTER UPDATE ON `adressen` FOR EACH ROW
      BEGIN
      DECLARE uu_id varchar(36);
        SET uu_id = ifnull(@useuuid,uuid());

      if ( (@use_hstr_trigger=1) or (@use_hstr_trigger is null) ) THEN
        INSERT INTO `adressen_hstr`
        (
          hstr_sessionuser,
          hstr_action,
          hstr_revision,
          `kundennummer`,`kostenstelle`,`name`,`aktiv`,`inhaber`,`inhaber_anzeigen`,`firma`,`nachname`,`zusatz`,`zusatz2`,`zusatz3`,`strasse`,`plz`,`ort`,`ortsteil`,`steuerschluessel`,`lc`,`telefon`,`telefax`,`zahlungsschluessel`,`booking_circle`,`preiskategorie`,`zahlungsart`,`bic`,`iban`,`bankland`,`einspeiserkennzeichen`,`sync_kundennummer`,`sync_kostenstelle`,`rabattgruppe`,`haus_nr`,`vorname`,`postid`,`alte_kundennummer`,`s_knr`,`rechnungslegung`,`zahlungsziel`,`steuernummer`,`ustid`,`endkunde`,`intercompany`,`geschaeftsstatus`,`kundenupoc`,`cliche`,`telefon2`,`telefon3`,`rechnungsdruck`,`rechnungssperre`,`frankierservice_formel`,`servicepauschale_formel`,`kundenbetreuer`,`vertragsart`,`vertragsende`,`gesondert_zusammenfassen`,`email`,`duns`,`quelle`,`firmennummer`,`website`,`rechnungssperre_text`,`feingrund`
        )

         SELECT
          ifnull(@sessionuser,'not set'),
          'update',
          uu_id,
          `kundennummer`,`kostenstelle`,`name`,`aktiv`,`inhaber`,`inhaber_anzeigen`,`firma`,`nachname`,`zusatz`,`zusatz2`,`zusatz3`,`strasse`,`plz`,`ort`,`ortsteil`,`steuerschluessel`,`lc`,`telefon`,`telefax`,`zahlungsschluessel`,`booking_circle`,`preiskategorie`,`zahlungsart`,`bic`,`iban`,`bankland`,`einspeiserkennzeichen`,`sync_kundennummer`,`sync_kostenstelle`,`rabattgruppe`,`haus_nr`,`vorname`,`postid`,`alte_kundennummer`,`s_knr`,`rechnungslegung`,`zahlungsziel`,`steuernummer`,`ustid`,`endkunde`,`intercompany`,`geschaeftsstatus`,`kundenupoc`,`cliche`,`telefon2`,`telefon3`,`rechnungsdruck`,`rechnungssperre`,`frankierservice_formel`,`servicepauschale_formel`,`kundenbetreuer`,`vertragsart`,`vertragsende`,`gesondert_zusammenfassen`,`email`,`duns`,`quelle`,`firmennummer`,`website`,`rechnungssperre_text`,`feingrund`
        FROM
          `adressen`
        WHERE
          `kundennummer`=NEW.kundennummer and `kostenstelle`=NEW.kostenstelle
        on duplicate key update hstr_action=values(hstr_action),hstr_revision=values(hstr_revision),hstr_datetime=values(hstr_datetime), `kundennummer`=values(`kundennummer`), `kostenstelle`=values(`kostenstelle`), `name`=values(`name`), `aktiv`=values(`aktiv`), `inhaber`=values(`inhaber`), `inhaber_anzeigen`=values(`inhaber_anzeigen`), `firma`=values(`firma`), `nachname`=values(`nachname`), `zusatz`=values(`zusatz`), `zusatz2`=values(`zusatz2`), `zusatz3`=values(`zusatz3`), `strasse`=values(`strasse`), `plz`=values(`plz`), `ort`=values(`ort`), `ortsteil`=values(`ortsteil`), `steuerschluessel`=values(`steuerschluessel`), `lc`=values(`lc`), `telefon`=values(`telefon`), `telefax`=values(`telefax`), `zahlungsschluessel`=values(`zahlungsschluessel`), `booking_circle`=values(`booking_circle`), `preiskategorie`=values(`preiskategorie`), `zahlungsart`=values(`zahlungsart`), `bic`=values(`bic`), `iban`=values(`iban`), `bankland`=values(`bankland`), `einspeiserkennzeichen`=values(`einspeiserkennzeichen`), `sync_kundennummer`=values(`sync_kundennummer`), `sync_kostenstelle`=values(`sync_kostenstelle`), `rabattgruppe`=values(`rabattgruppe`), `haus_nr`=values(`haus_nr`), `vorname`=values(`vorname`), `postid`=values(`postid`), `alte_kundennummer`=values(`alte_kundennummer`), `s_knr`=values(`s_knr`), `rechnungslegung`=values(`rechnungslegung`), `zahlungsziel`=values(`zahlungsziel`), `steuernummer`=values(`steuernummer`), `ustid`=values(`ustid`), `endkunde`=values(`endkunde`), `intercompany`=values(`intercompany`), `geschaeftsstatus`=values(`geschaeftsstatus`), `kundenupoc`=values(`kundenupoc`), `cliche`=values(`cliche`), `telefon2`=values(`telefon2`), `telefon3`=values(`telefon3`), `rechnungsdruck`=values(`rechnungsdruck`), `rechnungssperre`=values(`rechnungssperre`), `frankierservice_formel`=values(`frankierservice_formel`), `servicepauschale_formel`=values(`servicepauschale_formel`), `kundenbetreuer`=values(`kundenbetreuer`), `vertragsart`=values(`vertragsart`), `vertragsende`=values(`vertragsende`), `gesondert_zusammenfassen`=values(`gesondert_zusammenfassen`), `email`=values(`email`), `duns`=values(`duns`), `quelle`=values(`quelle`), `firmennummer`=values(`firmennummer`), `website`=values(`website`), `rechnungssperre_text`=values(`rechnungssperre_text`), `feingrund`=values(`feingrund`)
        ;
        END IF;
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen_suchindex_au` 
AFTER UPDATE ON `adressen` FOR EACH ROW
BEGIN
    insert into `adressen_suche` (`kundennummer`,`kostenstelle`,`adressen_anzeige`)
    select 
        `adressen`.kundennummer,
        `adressen`.kostenstelle,
        substring( concat(
            ifnull(`adressen`.`firma`, ''),
            ' ',
            ifnull(`adressen`.`name`, ''),
            ' ',
            ifnull(`adressen`.`vorname`, ''),
            ' ',
            ifnull(`adressen`.`zusatz`, ''),
            ' ',
            ifnull(`adressen`.`nachname`, ''),
            ' ',
            ifnull(`adressen`.`strasse`, ''),
            ' ',
            ifnull(`adressen`.`haus_nr`, ''),
            ' ',
            ifnull(`adressen`.`plz`, ''),
            ' ',
            ifnull(`adressen`.`ort`, ''),
            ' #',
            `adressen`.`kundennummer`,
            ' ',
            group_concat(
                concat(
                    '#',
                    ifnull(
                        concat(
                            `adressen_geschaeftsstellen`.`alte_kundennummer`,
                            'Z',
                            `adressen`.`kostenstelle`
                        ),
                        ''
                    )
                ) separator ', '
            ),
            ' ',
            group_concat(
                concat(
                    '#',
                    ifnull(
                        `adressen_geschaeftsstellen`.`alte_kundennummer`,
                        ''
                    )
                ) separator ', '
            ),
            ' (',
            `adressen`.`kostenstelle`,
            ')'
        ),1,255) AS `adressen_anzeige`
    from 
        `adressen`
        left join `adressen_geschaeftsstellen`
            on (`adressen`.kundennummer,`adressen`.kostenstelle) = (`adressen_geschaeftsstellen`.kundennummer,`adressen_geschaeftsstellen`.kostenstelle)
            and `adressen_geschaeftsstellen`.aktiv=1
    where (`adressen`.kundennummer,`adressen`.kostenstelle) = (new.kundennummer,new.kostenstelle)
group by `adressen`.kundennummer,`adressen`.kostenstelle    
    on duplicate key update adressen_anzeige=values(adressen_anzeige);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__au_mat_art` AFTER UPDATE ON `adressen` FOR EACH ROW
BEGIN
	if (@not_use_adressen_mat_trigger is null or @not_use_adressen_mat_trigger=0) THEN
  delete from mat_view_preisliste_adressen where kundennummer=NEW.kundennummer and kostenstelle=NEW.kostenstelle;
  insert into mat_view_preisliste_adressen select * from view_preisliste_adressen where kundennummer=NEW.kundennummer and kostenstelle=NEW.kostenstelle;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`thomashoffmann`@`localhost`*/ /*!50003 TRIGGER `adressen__bd` BEFORE DELETE ON `adressen` FOR EACH ROW
      BEGIN
      DECLARE uu_id varchar(36);
      SET uu_id = ifnull(@useuuid,uuid());

      if ( (@use_hstr_trigger=1) or (@use_hstr_trigger is null) ) THEN
        INSERT INTO `adressen_hstr`
        (
          hstr_sessionuser,
          hstr_action,
          hstr_revision,
          `kundennummer`,`kostenstelle`,`name`,`aktiv`,`inhaber`,`inhaber_anzeigen`,`firma`,`nachname`,`zusatz`,`zusatz2`,`zusatz3`,`strasse`,`plz`,`ort`,`ortsteil`,`steuerschluessel`,`lc`,`telefon`,`telefax`,`zahlungsschluessel`,`booking_circle`,`preiskategorie`,`zahlungsart`,`bic`,`iban`,`bankland`,`einspeiserkennzeichen`,`sync_kundennummer`,`sync_kostenstelle`,`rabattgruppe`,`haus_nr`,`vorname`,`postid`,`alte_kundennummer`,`s_knr`,`rechnungslegung`,`zahlungsziel`,`steuernummer`,`ustid`,`endkunde`,`intercompany`,`geschaeftsstatus`,`kundenupoc`,`cliche`,`telefon2`,`telefon3`,`rechnungsdruck`,`rechnungssperre`,`frankierservice_formel`,`servicepauschale_formel`,`kundenbetreuer`,`vertragsart`,`vertragsende`,`gesondert_zusammenfassen`,`email`,`duns`,`quelle`,`firmennummer`,`website`,`rechnungssperre_text`,`feingrund`
        )

         SELECT
          ifnull(@sessionuser,'not set'),
          'delete',
          uu_id,
          `kundennummer`,`kostenstelle`,`name`,`aktiv`,`inhaber`,`inhaber_anzeigen`,`firma`,`nachname`,`zusatz`,`zusatz2`,`zusatz3`,`strasse`,`plz`,`ort`,`ortsteil`,`steuerschluessel`,`lc`,`telefon`,`telefax`,`zahlungsschluessel`,`booking_circle`,`preiskategorie`,`zahlungsart`,`bic`,`iban`,`bankland`,`einspeiserkennzeichen`,`sync_kundennummer`,`sync_kostenstelle`,`rabattgruppe`,`haus_nr`,`vorname`,`postid`,`alte_kundennummer`,`s_knr`,`rechnungslegung`,`zahlungsziel`,`steuernummer`,`ustid`,`endkunde`,`intercompany`,`geschaeftsstatus`,`kundenupoc`,`cliche`,`telefon2`,`telefon3`,`rechnungsdruck`,`rechnungssperre`,`frankierservice_formel`,`servicepauschale_formel`,`kundenbetreuer`,`vertragsart`,`vertragsende`,`gesondert_zusammenfassen`,`email`,`duns`,`quelle`,`firmennummer`,`website`,`rechnungssperre_text`,`feingrund`
        FROM
          `adressen`
        WHERE
          `kundennummer`=OLD.kundennummer and `kostenstelle`=OLD.kostenstelle
        on duplicate key update hstr_action=values(hstr_action),hstr_revision=values(hstr_revision),hstr_datetime=values(hstr_datetime), `kundennummer`=values(`kundennummer`), `kostenstelle`=values(`kostenstelle`), `name`=values(`name`), `aktiv`=values(`aktiv`), `inhaber`=values(`inhaber`), `inhaber_anzeigen`=values(`inhaber_anzeigen`), `firma`=values(`firma`), `nachname`=values(`nachname`), `zusatz`=values(`zusatz`), `zusatz2`=values(`zusatz2`), `zusatz3`=values(`zusatz3`), `strasse`=values(`strasse`), `plz`=values(`plz`), `ort`=values(`ort`), `ortsteil`=values(`ortsteil`), `steuerschluessel`=values(`steuerschluessel`), `lc`=values(`lc`), `telefon`=values(`telefon`), `telefax`=values(`telefax`), `zahlungsschluessel`=values(`zahlungsschluessel`), `booking_circle`=values(`booking_circle`), `preiskategorie`=values(`preiskategorie`), `zahlungsart`=values(`zahlungsart`), `bic`=values(`bic`), `iban`=values(`iban`), `bankland`=values(`bankland`), `einspeiserkennzeichen`=values(`einspeiserkennzeichen`), `sync_kundennummer`=values(`sync_kundennummer`), `sync_kostenstelle`=values(`sync_kostenstelle`), `rabattgruppe`=values(`rabattgruppe`), `haus_nr`=values(`haus_nr`), `vorname`=values(`vorname`), `postid`=values(`postid`), `alte_kundennummer`=values(`alte_kundennummer`), `s_knr`=values(`s_knr`), `rechnungslegung`=values(`rechnungslegung`), `zahlungsziel`=values(`zahlungsziel`), `steuernummer`=values(`steuernummer`), `ustid`=values(`ustid`), `endkunde`=values(`endkunde`), `intercompany`=values(`intercompany`), `geschaeftsstatus`=values(`geschaeftsstatus`), `kundenupoc`=values(`kundenupoc`), `cliche`=values(`cliche`), `telefon2`=values(`telefon2`), `telefon3`=values(`telefon3`), `rechnungsdruck`=values(`rechnungsdruck`), `rechnungssperre`=values(`rechnungssperre`), `frankierservice_formel`=values(`frankierservice_formel`), `servicepauschale_formel`=values(`servicepauschale_formel`), `kundenbetreuer`=values(`kundenbetreuer`), `vertragsart`=values(`vertragsart`), `vertragsende`=values(`vertragsende`), `gesondert_zusammenfassen`=values(`gesondert_zusammenfassen`), `email`=values(`email`), `duns`=values(`duns`), `quelle`=values(`quelle`), `firmennummer`=values(`firmennummer`), `website`=values(`website`), `rechnungssperre_text`=values(`rechnungssperre_text`), `feingrund`=values(`feingrund`)
        ;
        END IF;
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
