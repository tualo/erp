DELIMITER;
SET FOREIGN_KEY_CHECKS=0;
insert into `ds`
                    (`table_name`)
                    values
                    ('hauptkassenbuecher')
                    on duplicate key update `table_name`=values(`table_name`);
update `ds` set `title`='Kassenbücher',`reorderfield`='',`use_history`='0',`searchfield`='name',`displayfield`='name',`sortfield`='name',`searchany`='1',`hint`='',`overview_tpl`='',`sync_table`='',`writetable`='',`globalsearch`='0',`listselectionmodel`='tualomultirowmodel',`sync_view`='',`syncable`='0',`cssstyle`='',`read_filter`='',`listxtypeprefix`='listview',`phpexporter`='XlsxWriter',`phpexporterfilename`='{GUID}',`combined`='0',`default_pagesize`='100',`allowForm`= 0 ,`existsreal`='1',`special_add_panel`='',`character_set_name`='',`read_table`='',`class_name`='ERP',`alternativeformxtype`='',`listviewbaseclass`='Tualo.DataSets.ListView',`showactionbtn`='1' where `table_name`='hauptkassenbuecher';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','aktiv')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='0',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='tinyint',`column_key`='',`column_type`='tinyint(4)',`character_maximum_length`='0',`numeric_precision`='3',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='aktiv';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','fibukonto')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(10)',`character_maximum_length`='10',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='fibukonto';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='{#serial}',`default_max_value`='10000000',`default_min_value`='1000',`update_value`='', `is_primary`='1',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='PRI',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='id';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','konto')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='MUL',`column_type`='varchar(100)',`character_maximum_length`='100',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='konto';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','kostenstelle')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='0',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='kostenstelle';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','kundennummer')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(10)',`character_maximum_length`='10',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='kundennummer';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(255)',`character_maximum_length`='255',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='name';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','preiskategorie')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='0',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='preiskategorie';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('hauptkassenbuecher','steuergruppe')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='normalbesteuert',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='MUL',`column_type`='varchar(25)',`character_maximum_length`='25',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='steuergruppe';
insert into `ds_access`
                    (`role`,`table_name`)
                    values
                    ('administration','hauptkassenbuecher')
                    on duplicate key update `role`=values(`role`),`table_name`=values(`table_name`);
update `ds_access` set `read`='1',`write`='1',`delete`='1',`append`='1',`existsreal`='0' where `role`='administration' and `table_name`='hauptkassenbuecher';
insert into `ds_access`
                    (`role`,`table_name`)
                    values
                    ('_default_','hauptkassenbuecher')
                    on duplicate key update `role`=values(`role`),`table_name`=values(`table_name`);
update `ds_access` set `read`='1',`write`='0',`delete`='0',`append`='0',`existsreal`='0' where `role`='_default_' and `table_name`='hauptkassenbuecher';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','aktiv','DE','Aktiv','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='checkbox',`position`='5',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='aktiv' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','fibukonto','DE','FIBU-Konto','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='7',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='fibukonto' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','id','DE','ID','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='0',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='id' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','konto','DE','Konto','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_buchungskonten_konto',`position`='4',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='konto' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','kostenstelle','DE','Kostenstelle','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='number0',`position`='6',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='kostenstelle' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','name','DE','Name','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='1',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='name' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','preiskategorie','DE','Preiskategorie','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_preisorientierung_name',`position`='3',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='preiskategorie' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('hauptkassenbuecher','steuergruppe','DE','Steuergruppe','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_steuergruppen_steuergruppe',`position`='2',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='steuergruppe' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','aktiv','DE','Aktiv')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='5',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='aktiv' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','fibukonto','DE','FIBU-Konto')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='7',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='fibukonto' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','id','DE','ID')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='0',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='id' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','konto','DE','Konto')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='column_buchungskonten_konto',`editor`='',`position`='4',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='konto' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','kostenstelle','DE','Kostenstelle')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='6',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='kostenstelle' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','name','DE','Name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='1',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='name' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','preiskategorie','DE','Preiskategorie')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='column_preisorientierung_id',`editor`='',`position`='3',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='preiskategorie' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','steuergruppe','DE','Steuergruppe')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='column_steuergruppen_steuergruppe',`editor`='',`position`='2',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='hauptkassenbuecher' and `column_name`='steuergruppe' and `language`='DE';
insert into `ds_dropdownfields`
                    (`table_name`,`name`)
                    values
                    ('hauptkassenbuecher','id')
                    on duplicate key update `table_name`=values(`table_name`),`name`=values(`name`);
update `ds_dropdownfields` set `idfield`='id',`displayfield`='name',`filterconfig`='' where `table_name`='hauptkassenbuecher' and `name`='id';
insert into `ds_nm_tables`
                    (`table_name`,`constraint_name`,`referenced_constraint_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','fk_kassenterminal_hauptkassenbuecher','fk_kassenterminal_beleg','DE','')
                    on duplicate key update `table_name`=values(`table_name`),`constraint_name`=values(`constraint_name`),`referenced_constraint_name`=values(`referenced_constraint_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_nm_tables` set `referenced_table_name`='blg_config',`intermedia_table_name`='kassenterminals',`position`='99',`hidden`='0',`active`='0',`table_name_json`='{\"kassenterminals__kasse\":\"hauptkassenbuecher__id\"}',`referenced_table_json`='{\"kassenterminals__beleg\":\"blg_config__id\"}' where `table_name`='hauptkassenbuecher' and `constraint_name`='fk_kassenterminal_hauptkassenbuecher' and `referenced_constraint_name`='fk_kassenterminal_beleg';
insert into `ds_nm_tables`
                    (`table_name`,`constraint_name`,`referenced_constraint_name`,`language`,`label`)
                    values
                    ('hauptkassenbuecher','fk_kassenterminal_hauptkassenbuecher','fk_kassenterminal_lager','DE','')
                    on duplicate key update `table_name`=values(`table_name`),`constraint_name`=values(`constraint_name`),`referenced_constraint_name`=values(`referenced_constraint_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_nm_tables` set `referenced_table_name`='lager',`intermedia_table_name`='kassenterminals',`position`='99',`hidden`='0',`active`='0',`table_name_json`='{\"kassenterminals__kasse\":\"hauptkassenbuecher__id\"}',`referenced_table_json`='{\"kassenterminals__lager\":\"lager__id\"}' where `table_name`='hauptkassenbuecher' and `constraint_name`='fk_kassenterminal_hauptkassenbuecher' and `referenced_constraint_name`='fk_kassenterminal_lager';
insert into `ds_reference_tables`
                    (`table_name`,`reference_table_name`,`constraint_name`)
                    values
                    ('hauptkassenbuecher','buchungskonten','fk_hauptkassenbuecher_konto')
                    on duplicate key update `reference_table_name`=values(`reference_table_name`),`constraint_name`=values(`constraint_name`);
update `ds_reference_tables` set `table_name`='hauptkassenbuecher',`columnsdef`='{\"hauptkassenbuecher__konto\":\"buchungskonten__konto\"}',`active`='0',`searchable`='0',`autosync`='1',`path`='',`position`='99999' where `constraint_name`='fk_hauptkassenbuecher_konto';
insert into `ds_reference_tables`
                    (`table_name`,`reference_table_name`,`constraint_name`)
                    values
                    ('hauptkassenbuecher','steuergruppen','fk_hauptkassenbuecher_steuergruppe')
                    on duplicate key update `reference_table_name`=values(`reference_table_name`),`constraint_name`=values(`constraint_name`);
update `ds_reference_tables` set `table_name`='hauptkassenbuecher',`columnsdef`='{\"hauptkassenbuecher__steuergruppe\":\"steuergruppen__steuergruppe\"}',`active`='0',`searchable`='0',`autosync`='1',`path`='',`position`='99999' where `constraint_name`='fk_hauptkassenbuecher_steuergruppe';
SET FOREIGN_KEY_CHECKS=1;