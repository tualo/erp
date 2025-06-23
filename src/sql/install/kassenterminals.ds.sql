DELIMITER ;
SET FOREIGN_KEY_CHECKS=0;
insert into `ds`
                    (`table_name`)
                    values
                    ('kassenterminals')
                    on duplicate key update `table_name`=values(`table_name`);
update `ds` set `title`='Kassenterminals',`reorderfield`='',`use_history`='0',`searchfield`='id',`displayfield`='id',`sortfield`='id',`searchany`='1',`hint`='',`overview_tpl`='',`sync_table`='',`writetable`='',`globalsearch`='0',`listselectionmodel`='cellmodel',`sync_view`='',`syncable`='0',`cssstyle`='',`read_filter`='',`listxtypeprefix`='listview',`phpexporter`='XlsxWriter',`phpexporterfilename`='{GUID}',`combined`='0',`default_pagesize`='100',`allowForm`= 1 ,`existsreal`='1',`special_add_panel`='',`character_set_name`='',`read_table`='view_readtable_kassenterminals',`class_name`='ERP',`alternativeformxtype`='',`listviewbaseclass`='Tualo.DataSets.ListView',`showactionbtn`='1' where `table_name`='kassenterminals';

insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','adminpin')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(10)',`character_maximum_length`='10',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='adminpin';

insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','beleg')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='6',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='MUL',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='\'\'',`hint`='' where `table_name`='kassenterminals' and `column_name`='beleg';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','beleg_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='beleg_id';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','blg_config_name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(255)',`character_maximum_length`='255',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='blg_config_name';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','bon_header')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='longtext',`column_key`='',`column_type`='longtext',`character_maximum_length`='4294967295',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='bon_header';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='1',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='PRI',`column_type`='varchar(36)',`character_maximum_length`='36',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='id';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','kasse')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='1',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='MUL',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='\'\'',`hint`='' where `table_name`='kassenterminals' and `column_name`='kasse';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','kassen_name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(255)',`character_maximum_length`='255',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='kassen_name';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','kasse_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='kasse_id';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','lager')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='0',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='MUL',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='\'\'',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','lager_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager_id';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','lager_name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(255)',`character_maximum_length`='255',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='0',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager_name';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='NO',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='UNI',`column_type`='varchar(100)',`character_maximum_length`='100',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='name';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','productlist')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='int',`column_key`='',`column_type`='int(11)',`character_maximum_length`='0',`numeric_precision`='10',`numeric_scale`='0',`character_set_name`='',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='productlist';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','servicepin')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='',`deferedload`='0',`existsreal`='1',`data_type`='varchar',`column_key`='',`column_type`='varchar(100)',`character_maximum_length`='100',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='servicepin';
insert into `ds_column`
                    (`table_name`,`column_name`)
                    values
                    ('kassenterminals','wgfilter')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`);
update `ds_column` set `default_value`='',`default_max_value`='10000000',`default_min_value`='0',`update_value`='', `is_primary`='0',`syncable`='0',`referenced_table`='',`referenced_column_name`='',`is_nullable`='YES',`is_referenced`='NO',`deferedload`='0',`existsreal`='1',`data_type`='longtext',`column_key`='',`column_type`='longtext',`character_maximum_length`='4294967295',`numeric_precision`='0',`numeric_scale`='0',`character_set_name`='utf8mb4',`privileges`='select,insert,update,references',`writeable`='1',`note`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='wgfilter';

insert into `ds_access`
                    (`role`,`table_name`)
                    values
                    ('administration','kassenterminals')
                    on duplicate key update `role`=values(`role`),`table_name`=values(`table_name`);
update `ds_access` set `read`='0',`write`='1',`delete`='1',`append`='1',`existsreal`='0' where `role`='administration' and `table_name`='kassenterminals';
insert into `ds_access`
                    (`role`,`table_name`)
                    values
                    ('_default_','kassenterminals')
                    on duplicate key update `role`=values(`role`),`table_name`=values(`table_name`);
update `ds_access` set `read`='1',`write`='0',`delete`='0',`append`='0',`existsreal`='0' where `role`='_default_' and `table_name`='kassenterminals';

insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','adminpin','DE','Admin-PIN','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='9',`hidden`='0',`active`='1',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='adminpin' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','beleg','DE','Belegart','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_blg_config_id',`position`='5',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='beleg' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','beleg_id','DE','beleg_id','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='13',`hidden`='1',`active`='0',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='beleg_id' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','blg_config_name','DE','Belegart-Name','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='2',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='blg_config_name' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','id','DE','Seriennummer','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='0',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='id' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','kasse','DE','Kasse','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_hauptkassenbuecher_id',`position`='6',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='kasse' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','kassen_name','DE','Kassen-Name','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='3',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='kassen_name' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','kasse_id','DE','kasse_id','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='12',`hidden`='1',`active`='0',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='kasse_id' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','lager','DE','Lager','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_lager_id',`position`='7',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','lager_id','DE','lager_id','Allgemein')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='14',`hidden`='1',`active`='0',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='lager_id' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','lager_name','DE','Lager-Name','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='displayfield',`position`='4',`hidden`='1',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager_name' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','name','DE','Name','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='1',`hidden`='0',`active`='1',`allowempty`='1',`fieldgroup`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='name' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','productlist','DE','Produkte','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='combobox_cash_register_productlist_id',`position`='8',`hidden`='0',`active`='1',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='productlist' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','servicepin','DE','Orga-PIN','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textfield',`position`='10',`hidden`='0',`active`='1',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='servicepin' and `language`='DE';
insert into `ds_column_form_label`
                    (`table_name`,`column_name`,`language`,`label`,`field_path`)
                    values
                    ('kassenterminals','wgfilter','DE','Filter','Allgemein/Angaben')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`),`field_path`=values(`field_path`);
update `ds_column_form_label` set `xtype`='textarea',`position`='11',`hidden`='0',`active`='1',`allowempty`='0',`fieldgroup`='',`hint`='\'\'' where `table_name`='kassenterminals' and `column_name`='wgfilter' and `language`='DE';


insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','beleg','DE','Belegart')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='6',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='beleg' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','beleg_id','DE','beleg_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='10',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='beleg_id' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','blg_config_name','DE','Belegart-Name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='2',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='blg_config_name' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','id','DE','Seriennummer')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='0',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='id' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','kasse','DE','Kasse')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='7',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='kasse' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','kassen_name','DE','Kassen-Name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='3',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='kassen_name' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','kasse_id','DE','kasse_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='9',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='kasse_id' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','lager','DE','Lager')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='8',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='lager' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','lager_id','DE','lager_id')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='11',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='lager_id' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','lager_name','DE','Lager-Name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='4',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='lager_name' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','name','DE','Name')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='1',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='ASC',`align`='left',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='' where `table_name`='kassenterminals' and `column_name`='name' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','productlist','DE','Liste')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='column_cash_register_productlist_id',`editor`='',`position`='5',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='0',`active`='1',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='productlist' and `language`='DE';
insert into `ds_column_list_label`
                    (`table_name`,`column_name`,`language`,`label`)
                    values
                    ('kassenterminals','wgfilter','DE','wgfilter')
                    on duplicate key update `table_name`=values(`table_name`),`column_name`=values(`column_name`),`language`=values(`language`),`label`=values(`label`);
update `ds_column_list_label` set `xtype`='gridcolumn',`editor`='',`position`='12',`summaryrenderer`='',`renderer`='',`summarytype`='',`hidden`='1',`active`='0',`flex`='1.00',`direction`='',`align`='',`grouped`='0',`filterstore`='',`listfiltertype`='',`hint`='NULL' where `table_name`='kassenterminals' and `column_name`='wgfilter' and `language`='DE';



insert into `ds_dropdownfields`
                    (`table_name`,`name`)
                    values
                    ('kassenterminals','id')
                    on duplicate key update `table_name`=values(`table_name`),`name`=values(`name`);
update `ds_dropdownfields` set `idfield`='id',`displayfield`='name',`filterconfig`='' where `table_name`='kassenterminals' and `name`='id';


insert into `ds_reference_tables`
                    (`table_name`,`reference_table_name`,`constraint_name`)
                    values
                    ('kassenterminals','blg_config','fk_kassenterminal_beleg')
                    on duplicate key update `reference_table_name`=values(`reference_table_name`),`constraint_name`=values(`constraint_name`);
update `ds_reference_tables` set `table_name`='kassenterminals',`columnsdef`='{\"kassenterminals__beleg\":\"blg_config__id\"}',`active`='0',`searchable`='0',`autosync`='1',`path`='',`position`='99999' where `constraint_name`='fk_kassenterminal_beleg';
insert into `ds_reference_tables`
                    (`table_name`,`reference_table_name`,`constraint_name`)
                    values
                    ('kassenterminals','hauptkassenbuecher','fk_kassenterminal_hauptkassenbuecher')
                    on duplicate key update `reference_table_name`=values(`reference_table_name`),`constraint_name`=values(`constraint_name`);
update `ds_reference_tables` set `table_name`='kassenterminals',`columnsdef`='{\"kassenterminals__kasse\":\"hauptkassenbuecher__id\"}',`active`='0',`searchable`='0',`autosync`='1',`path`='',`position`='99999' where `constraint_name`='fk_kassenterminal_hauptkassenbuecher';
insert into `ds_reference_tables`
                    (`table_name`,`reference_table_name`,`constraint_name`)
                    values
                    ('kassenterminals','lager','fk_kassenterminal_lager')
                    on duplicate key update `reference_table_name`=values(`reference_table_name`),`constraint_name`=values(`constraint_name`);
update `ds_reference_tables` set `table_name`='kassenterminals',`columnsdef`='{\"kassenterminals__lager\":\"lager__id\"}',`active`='0',`searchable`='0',`autosync`='1',`path`='',`position`='99999' where `constraint_name`='fk_kassenterminal_lager';
SET FOREIGN_KEY_CHECKS=1;