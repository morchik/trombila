-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Время создания: Дек 04 2008 г., 05:40
-- Версия сервера: 5.0.45
-- Версия PHP: 5.2.4
-- 
-- БД: `vmmorchik`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблицы `html_view`
-- 

CREATE TABLE `html_view` (
  `ID` int(11) NOT NULL default '0',
  `HV_NAME` varchar(50) NOT NULL default '',
  `VIEW_NAME` varchar(255) NOT NULL default 'db.',
  `WHERE_STM` varchar(255) default '1=1',
  `TAG` varchar(50) default 'table',
  `TAG_END_PROP` varchar(100) NOT NULL default '></table',
  `THEAD_TAG` varchar(100) NOT NULL default 'thead',
  `TH_TAG` varchar(10) NOT NULL default 'th',
  `PROP_TH` varchar(100) NOT NULL default 'scope="col"',
  `TR_TAD` varchar(50) default 'tr',
  `HEAD_TAB` varchar(255) default 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%',
  `PROP_HEAD` varchar(255) default 'bgColor=#E2DBF8 align=center class=small2',
  `PROP_BODY` varchar(255) default 'bgcolor=''#FFFFFF'' class=small',
  `START_ANY_TAG` char(3) default '<',
  `END_ANY_TAG` char(3) default '>',
  `END_ST_TAG` char(3) default '/',
  `REMARK` varchar(255) default NULL,
  `HREF_SELF` varchar(255) default 'view_select.php?v_html_view_id=36',
  `INCLUDE_TOP` varchar(100) default 'template/header_view_select.php',
  `INCLUDE_BOTTOM` varchar(100) default 'template/botton_view_select.php',
  `INCLUDE_TOP2` varchar(100) default NULL,
  `VISIBLE_ORDER` char(1) default 'F',
  `COUNT_ROW_VIEW` int(11) default '100',
  `SHOW_SUM` char(1) default 'F',
  `TAB_TITLE` varchar(255) default '<h3>cols</h3>',
  `STR_DESC` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `html_view`
-- 

INSERT INTO `html_view` VALUES (0, '1', 'select * from form', '', 'table border="1"', '></table', 'thead', 'th', 'scope="col"', 'tr', NULL, NULL, NULL, '<', '>', NULL, NULL, NULL, NULL, NULL, NULL, 'F', 10, 'F', NULL, NULL);
INSERT INTO `html_view` VALUES (1, 'url', 'select * from url', '', 'table width="100%"', '></table', 'thead', 'th', 'scope="col"', 'tr', '', '', '', '<', '>', NULL, NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', NULL, NULL);
INSERT INTO `html_view` VALUES (2, 'w', 'select * from w', ' where id =''$w_id'' or ''$w_id''=''''', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', 'words', NULL);
INSERT INTO `html_view` VALUES (3, '', 'select s.w_id, s.w_s_id, s.st_id, s.orn, w.v, ws.v vs from s, w, w ws', ' where s.w_id=w.id and s.w_s_id=ws.id and ( w_id =''$w_id'' or ''$w_id''='''') and ( w_s_id =''$w_s_id'' or ''$w_s_id''='''')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', 'sinonims', NULL);
INSERT INTO `html_view` VALUES (4, '', 'select ts.*, w.st_id, w.v from ts, w', ' where w.id = ts.w_id and (( ''$w_id''='''' and (ts.id =''$ts_id'' or ts.parent=''$ts_id'')) or (''$ts_id''='''' and w_id = ''$w_id''))', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (10, 'full view of html_view', 'select * from html_view', ' where (ID = ''$v_view_id'' or ''$v_view_id''='''')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>Html views</h3>', NULL);
INSERT INTO `html_view` VALUES (20, '', 'SELECT c.* from contact c, l_usa_con l', ' where c.id = l.contact_id and l.us_auto_id=$usa_id', 'table', '', 'thead', 'th', 'scope="col"', 'tr', '', '', '', '<', '>', '/', NULL, '', '', '', NULL, 'F', 100, 'F', '', NULL);
INSERT INTO `html_view` VALUES (35, '', 'select * from html_view', '', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>MyWeb</h3>', NULL);
INSERT INTO `html_view` VALUES (36, 'html_view_col', 'select * from html_view_col', ' where (HTML_VIEW_ID = ''$v_view_id'')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (37, 'columns of html view', 'select * from html_view_col', ' where (HTML_VIEW_ID = ''$v_view_id'')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (99, 'form_send_field_value', 'select v.*, ff.name from form_send_field_value v, form_field ff', ' where v.form_field_id = ff.id and form_send_id=$fs_id', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', '', '', '', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>Form send field''s values</h3>', NULL);
INSERT INTO `html_view` VALUES (100, '', 'select f.*, u.url_path from form f, url u', ' where f.state = ''A'' and f.url_id=u.id and ((f.id=''$f'' or ''$f''='''') and (f.contact_id=''$c'' or ''$c''=''''))', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center', 'bgColor=''#FFFFFF''', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h4>Forms</h4>', NULL);
INSERT INTO `html_view` VALUES (101, '', 'select * from form_field', ' where (FORM_ID = ''$v_form_id'' or ''$v_form_id''='''')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center', 'bgcolor=''#FFFFFF''', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h4>form''s fields</h4>', NULL);
INSERT INTO `html_view` VALUES (102, '', 'select * from form_send', ' where (FORM_ID = ''$v_form_id'' or ''$v_form_id''='''')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>Form''s sends</h3>', NULL);
INSERT INTO `html_view` VALUES (103, '', 'select char_length(r.value) zvalue, r.*, fs.form_id, f.url_id, u.url_path, fs.by_form_send_id  from form_send_response r, form_send fs, form f, url u', ' where r.form_send_id=fs.id and fs.form_id =f.id and f.url_id = u.id and (f.id=''$f_id'' or ''$f_id''='''') and (fs.id=''$fs_id'' or ''$fs_id''='''')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>Responses to this form</h3>', NULL);
INSERT INTO `html_view` VALUES (10104, '', 'select a.* from advert a', ' where (a.contact_id=''$v_c_id'' or ''$v_c_id''='''')', 'small', '', '', 'i', '', 'p', '', '', '', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 5, 'F', '', NULL);
INSERT INTO `html_view` VALUES (10567, '', 'select l.*, w.v from system_language l, w', ' where l.w_id = w.id and active is not null', 'small', '', '', 'i', '', 'small', '', '', '', '<', '>', '/', NULL, '', '', '', NULL, 'F', 30, 'F', '', NULL);
INSERT INTO `html_view` VALUES (104, '', 'select a.* from advert a', ' where (a.contact_id=''$v_c_id'' or ''$v_c_id''='''') and (a.cat_area_id=''$ca'' or ''$ca''='''')', 'table', '', 'thead', 'th', '', 'tr', '', '', '', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '', NULL);
INSERT INTO `html_view` VALUES (105, 'advert_ex_ts', 'select * from advert_ex_ts', '', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (106, '', 'SELECT fs.*, u.url_path, f.contact_id as cont_id from form_send fs, form f, url u', ' WHERE fs.form_id=f.id and f.url_id=u.id and (fs.us__advert_id=''$a_id'' or ''$a_id''='''') and (f.contact_id=''$cont_id'' or ''$cont_id''='''' )', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', '', 'bgColor=#E2DBF8 align=center class=small2', NULL, '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 50, 'F', '<h4>Form sends for macroses</h4>', NULL);
INSERT INTO `html_view` VALUES (107, 'form send', 'select * from form_send', ' where by_form_send_id=$fs', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', 'form_sends by_form_send_id', NULL);
INSERT INTO `html_view` VALUES (108, '', 'select * from form_send', '  where id=$fs or pfs_id=$fs', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>Form sends</h3>', NULL);
INSERT INTO `html_view` VALUES (110, 'form_ex_ts', 'SELECT f.form_id, form.url_id, u.url_path, f.ex__ts_id  FROM form_ex_ts f, ts t, form, url u', ' WHERE t.id=f.ex__ts_id    and f.form_id=form.id    and form.url_id=u.id', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (111, '', 'SELECT ae.advert_id, t.id, a.gs, a.pr, a.ts  FROM advert_ex_ts ae, ts t, advert a', '  WHERE ae.advert_id= a.id    and ae.ex__ts_id = t.id', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (200, '', 'select f.*, u.url_path from form f, url u', ' where f.state = ''A'' and f.url_id=u.id and ((f.id = ''$pf'' or f.p_form_id = ''$pf'' or (''$pf''='''' and f.pfsr_id is null)) and (f.contact_id=''$c''))', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, '', '', '', NULL, 'F', 100, 'F', '', NULL);
INSERT INTO `html_view` VALUES (1001, 'url''s list', 'select * from url_list', '', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (201, '', 'select a.*, concat(c.phone, '' '', c.name, '' '', c.mail, '' '', c.city, '' '', c.country) name, w.v  from advert a, contact c, cat_area ca, ts, w where a.contact_id = c.id and ca.id = a.cat_area_id  and ca.operation_id = ts.id and ts.w_id = w.id', ' and (a.gs like ''%$q%'') and (''$category_id''='''' or ca.category_id = ''$category_id'') and (''$area_id''='''' or ca.area_id = ''$area_id'') and (''$language_id''='''' or ca.language_id = ''$language_id'') and (''$operation_id''='''' or ca.operation_id = ''$operation_id'')', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, '', '', '', NULL, 'F', 10, 'F', '', NULL);
INSERT INTO `html_view` VALUES (5, 'st', 'select * from st', ' where id=''$st_id'' or ''''=''$st_id''', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (6, '', 'select * from stgl', ' where st_g_id=''$st_id''', 'table', '></table', 'thead', 'th', 'scope="col"', 'tr', 'border=0 cellpadding=0 cellspacing=0 width=100%><tr><td bgcolor=#8E8D8F><table border=0 cellPadding=0 cellSpacing=1 width=100%', 'bgColor=#E2DBF8 align=center class=small2', 'bgcolor=''#FFFFFF'' class=small', '<', '>', '/', NULL, 'view_select.php?v_html_view_id=36', 'template/header_view_select.php', 'template/botton_view_select.php', NULL, 'F', 100, 'F', '<h3>cols</h3>', NULL);
INSERT INTO `html_view` VALUES (10201, '', 'select a.*, concat(c.phone, '' '', c.name, '' '', c.mail, '' '', c.city, '' '', c.country) name, w.v  from advert a, contact c, cat_area ca, ts, w where a.contact_id = c.id and ca.id = a.cat_area_id  and ca.operation_id = ts.id and ts.w_id = w.id', ' and (a.gs like ''%$q%'') and (''$category_id''=''0'' or ca.category_id = ''$category_id'') and (''$area_id''=''0'' or ca.area_id = ''$area_id'') and (''$language_id''=''0'' or ca.language_id = ''$language_id'') and (''$operation_id''=''0'' or ca.operation_id = ''$operation_id'')', 'small', '', '', 'i', '', 'p', '', '', '', '<', '>', '/', NULL, '', '', '', NULL, 'F', 5, 'F', '', NULL);
INSERT INTO `html_view` VALUES (25, '', 'SELECT c.* from contact c', ' where c.name like ''%$name%'' and c.mail like ''%$mail%'' and c.phone like ''%$phone%'' and c.country like ''%$country%'' and c.city like ''%$city%'' and (id=''$cont_id'' or ''$cont_id''='''')', 'table', '', 'thead', 'th', 'scope="col"', 'tr', '', '', '', '<', '>', '/', NULL, '', '', '', NULL, 'F', 100, 'F', '', NULL);
INSERT INTO `html_view` VALUES (10004, '', 'select ts.*, w.st_id, coalesce(ws.v,  w.v) v, ws.v vs, ''->'' sn', ' from ts, w LEFT  JOIN s ON w.id = s.w_id AND ( ''$st_id'' = s.st_id OR s.st_id IS  NULL  )  LEFT  JOIN w ws ON s.w_s_id = ws.id WHERE w.id = ts.w_id AND (ts.id=''$id'' or ts.parent=''$ts_id'') and  (coalesce(ws.v,w.v) like ''%$q%'')', 'font', '', '', '', '', 'small', '', '', '', '<', '>', '/', NULL, '', '', '', NULL, 'F', 30, 'F', '', NULL);
INSERT INTO `html_view` VALUES (98, 'Scaned urls', 'select r.*, url.url_path, char_length(v) size from r, url', ' where r.url_id = url.id and (url.id = ''$u_id'' or ''$u_id'' = '''')', 'table width="100%"', '></table', 'thead', 'th', 'scope="col"', 'tr', '', '', '', '<', '>', NULL, NULL, NULL, NULL, NULL, NULL, 'F', 100, 'F', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Структура таблицы `html_view_col`
-- 

CREATE TABLE `html_view_col` (
  `HTML_VIEW_ID` int(11) NOT NULL default '35',
  `ORDER_NUM` int(11) NOT NULL default '0',
  `HEADER_STR` varchar(255) default NULL,
  `COL_NAME` varchar(50) default NULL,
  `HREV_TAG` varchar(50) default 'href',
  `HREV_LINK` varchar(255) default NULL,
  `TD_TAG` varchar(50) default 'td',
  `PROP_TD_DAG` varchar(255) default ' align=center><font size="2" class=smallbd',
  `ORDER_BY_NUM` int(11) default '999',
  `ORDER_BY_ASC` varchar(4) default NULL,
  `REMARK` varchar(255) default NULL,
  `VISIBLE` char(1) default 'T',
  `HREV_TITLE` varchar(255) default '" class=small2',
  `SHOW_SUM` char(1) default 'F',
  `PREV_FUNK` varchar(255) default NULL,
  `NEXT_FUNK` varchar(255) default NULL,
  `SUM_STR` varchar(255) default NULL,
  `STR_COL_DESC` varchar(255) default NULL,
  PRIMARY KEY  (`HTML_VIEW_ID`,`ORDER_NUM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `html_view_col`
-- 

INSERT INTO `html_view_col` VALUES (0, 0, 'id', 'id', NULL, NULL, 'td', NULL, 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (0, 1, 'url_id', 'url_id', NULL, NULL, 'td', NULL, 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (0, 2, 'TS', 'ts', NULL, NULL, 'td', NULL, 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 10, 'ID', 'id', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (1, 20, 'url', 'url_path', 'href', NULL, 'td', NULL, 999, NULL, NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (1, 30, 'last', 'last_getting', 'href', NULL, 'td', NULL, 999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 1, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 10, 'st_id', 'st_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 2, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 20, 'v', 'v', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 3, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (5, 13, 's', NULL, 'href', 'v.jsp?v=6&st_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' s', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 17, 'sw', NULL, 'href', 'v.jsp?v=3&w_s_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' sw', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 0, 'w_id', 'w_id', 'href', 'v.jsp?v=2&w_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 1, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 10, 'w_s_id', 'w_s_id', 'href', 'v.jsp?v=2&w_id=$vv[2]', 'td', ' align=center><font size="2" class=smallbd', 2, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 20, 'st_id', 'st_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 30, 'orn', 'orn', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 5, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 0, 'ID', 'ID', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 10, 'HV_NAME', 'HV_NAME', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 20, 'VIEW_NAME', 'VIEW_NAME', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 30, 'WHERE_STM', 'WHERE_STM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 40, 'TAG', 'TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 50, 'TR_TAD', 'TR_TAD', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 60, 'HEAD_TAB', 'HEAD_TAB', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 70, 'PROP_HEAD', 'PROP_HEAD', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 80, 'PROP_BODY', 'PROP_BODY', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 90, 'START_ANY_TAG', 'START_ANY_TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 100, 'END_ANY_TAG', 'END_ANY_TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 110, 'END_ST_TAG', 'END_ST_TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 120, 'REMARK', 'REMARK', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 130, 'HREF_SELF', 'HREF_SELF', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 140, 'INCLUDE_TOP', 'INCLUDE_TOP', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 150, 'INCLUDE_BOTTOM', 'INCLUDE_BOTTOM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 160, 'INCLUDE_TOP2', 'INCLUDE_TOP2', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 170, 'VISIBLE_ORDER', 'VISIBLE_ORDER', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 180, 'COUNT_ROW_VIEW', 'COUNT_ROW_VIEW', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 190, 'SHOW_SUM', 'SHOW_SUM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 200, 'TAB_TITLE', 'TAB_TITLE', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 210, 'STR_DESC', 'STR_DESC', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 10, 'name', 'name', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 3, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 20, 'mail', 'mail', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 0, 'Action', NULL, 'href', '?log_for_cid=$vv[1]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'LogIn', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 30, 'pass', 'pass', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 40, 'phone', 'phone', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 50, 'country', 'country', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 60, 'city', 'city', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 70, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, 'desc', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 1000, 'test', NULL, 'href', 'v.jsp?v=36&v_view_id=$vv[0]\\"', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'test', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 20, 'TAB_TITLE', 'TAB_TITLE', 'href', '', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', '', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 5, 'ID', 'ID', 'href', 'v.jsp?v=10&v_view_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 10, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 10, 'HV_NAME', 'HV_NAME', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 2000, 'select', 'VIEW_NAME', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 2100, 'where', 'WHERE_STM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (35, 1001, 'view', NULL, 'href', ' v.jsp?v=37&v_view_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', 'full', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (36, 10, 'ORDER_NUM', 'ORDER_NUM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (36, 20, 'HEADER_STR', 'HEADER_STR', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (36, 30, 'VISIBLE', 'VISIBLE', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, 'dfhfreh');
INSERT INTO `html_view_col` VALUES (36, 1000, 'STR_COL_DESC', 'STR_COL_DESC', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 0, 'HTML_VIEW_ID', 'HTML_VIEW_ID', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 10, 'ORDER_NUM', 'ORDER_NUM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 20, 'HEADER_STR', 'HEADER_STR', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 30, 'COL_NAME', 'COL_NAME', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 40, 'HREV_TAG', 'HREV_TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 50, 'HREV_LINK', 'HREV_LINK', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 60, 'TD_TAG', 'TD_TAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 70, 'PROP_TD_DAG', 'PROP_TD_DAG', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 80, 'ORDER_BY_NUM', 'ORDER_BY_NUM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 90, 'ORDER_BY_ASC', 'ORDER_BY_ASC', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 100, 'REMARK', 'REMARK', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 110, 'VISIBLE', 'VISIBLE', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 120, 'HREV_TITLE', 'HREV_TITLE', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 130, 'SHOW_SUM', 'SHOW_SUM', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 140, 'PREV_FUNK', 'PREV_FUNK', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 150, 'NEXT_FUNK', 'NEXT_FUNK', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 160, 'SUM_STR', 'SUM_STR', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (37, 170, 'STR_COL_DESC', 'STR_COL_DESC', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 10, 'form_field_id', 'form_field_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 2000, 'fs_id', 'form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 30, 'value', 'value', 'href', NULL, 'td', '', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 40, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 13, 'method', 'method', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (99, 15, 'name', 'name', 'href', NULL, 'td', '', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 10, 'ID', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, 'DESC', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 20, 'URL_ID', 'url_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 30, 'URL_PATH', 'url_path', 'href', NULL, 'td', ' align=left><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1000, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1500, 'LINK', NULL, 'href', '/t/add/set_m_field.jsp?f=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Save', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1001, 'cat_area', 'cat_area_id', 'href', NULL, 'td', ' align=center', NULL, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1003, 'contact_id', 'contact_id', 'href', NULL, 'td', ' align=center', NULL, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 10, 'form_id', 'form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 20, 'ordn', 'ordn', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 1, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 30, 'name', 'name', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 25, 'method', 'method', 'href', NULL, 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 50, 'value', 'value', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 60, 'm_field_id', 'm_field_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 70, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (101, 65, 'set m_form_field_id', NULL, '', '<select name=''$vv[0]''><option selected> </option><!--option_list--></select>', 'td', ' ><font size="2"', 999, NULL, NULL, 'J', '" class=small2', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 10, 'form_id', 'form_id', 'href', '/t/v.jsp?v=100&f=$vv[1]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 20, 'by_form_send_id', 'by_form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 30, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 40, 'last_send', 'last_send', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 55, 'advert', 'us__advert_id', 'href', NULL, 'td', '', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 60, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, 'desc', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 10, 'form_send_id', 'form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 20, 'value', 'value', 'href', '/t/add/form_send_response.jsp?fsr=$vv[0]', 'td', '', 999, NULL, NULL, 'F', '" class=small2', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 30, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 100, 'form_id', 'form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 110, 'url_id', 'url_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 120, 'url_path', 'url_path', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 140, 'by_form_send_id', 'by_form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 150, 'by_form_id', 'by_form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 0, 'id', 'id', 'href', 'advert.jsp?a_id=$vv[0]', 'td', NULL, 2, 'DESC', NULL, 'J', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 10, 'contact_id', 'contact_id', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 20, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', NULL, 3, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 30, 'goods or services', 'gs', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 40, 'price', 'pr', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 50, 'time stamp', 'ts', 'href', NULL, 'td', NULL, 1, 'desc', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 12, 'ex__ts_id', 'ex__ts_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 10, 'type', 'type', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 20, 'amount', 'amount', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 30, 'first_ts', 'first_ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 40, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (105, 15, 'ex__ts_id_2', 'ex__ts_id_2', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 0, 'id', 'id', 'href', '/t/v.jsp?v=103&fs_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, 'DESC', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 10, 'form_id', 'form_id', 'href', '/t/v.jsp?v=103&f_id=$vv[1]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 20, 'by_form_send_id', 'by_form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 25, 'pfs_id', 'pfs_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 40, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 50, 'last_send', 'last_send', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 2000, 'this', NULL, 'href', '/t/v.jsp?v=99&fs_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'fields', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 3000, 'send''s', NULL, 'href', '/t/v.jsp?v=107&fs=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'view', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 4000, 'Details', NULL, 'href', '/t/v.jsp?v=108&fs=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'More', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 10, 'form_id', 'form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 20, 'by_form_send_id', 'by_form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 30, 'us__advert_id', 'us__advert_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 40, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 50, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 60, 'last_send', 'last_send', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (107, 2000, 'this', NULL, 'href', 'v.jsp?v=99&fs_id=$vv[0]', 'td', '', 999, NULL, NULL, 'T', '', 'F', 'fields', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 10, 'form_id', 'form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 20, 'pfs_id', 'pfs_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 30, 'by_form_send_id', 'by_form_send_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 40, 'us__advert_id', 'us__advert_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 50, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 60, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 70, 'last_send', 'last_send', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 2000, 'this', NULL, 'href', 'v.jsp?v=99&fs_id=$vv[0]', 'td', '', 999, NULL, NULL, 'T', '', 'F', 'fields', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 3000, 'info', NULL, 'href', 'v.jsp?v=108&fs=$vv[0]', 'td', '', 999, NULL, NULL, 'T', '', 'F', 'next', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (108, 4000, 'info', NULL, 'href', 'v.jsp?v=103&f_id=$vv[1]', 'td', '', 999, NULL, NULL, 'T', '', 'F', 'More', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (110, 0, 'form_id', 'form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (110, 10, 'url_id', 'url_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (110, 20, 'url_path', 'url_path', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (110, 30, 'ex__ts_id', 'ex__ts_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (111, 0, 'advert_id', 'advert_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (111, 10, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (111, 20, 'gs', 'gs', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (111, 30, 'pr', 'pr', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (111, 40, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 10, 'url_id', 'url_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 5, 'b_url', 'base_url_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 30, 'enc', 'send_enc', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 40, 'pfsr_id', 'pfsr_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 15, 'pf_id', 'p_form_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 60, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 70, 'c_id', 'contact_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 80, 'state', 'state', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 90, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 100, 'url_path', 'url_path', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 22, 'LINK', NULL, 'href', '/add/set_m_field.jsp?f=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'More', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 24, 'LINK', NULL, 'href', '/v.jsp?v=200&c=$c&pf=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Next', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (200, 26, 'LINK', NULL, 'href', '/v.jsp?v=200&c=$c&pf=$vv[3]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Up', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (1001, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (1001, 10, 'url', 'url', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 10, 'parent', 'parent', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 25, 'state', 'state', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 80, 'orn', 'orn', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 10, 'Cont.', 'contact_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 1, 'DESC', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 20, 'w_id', 'w_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 70, 'last_prep', 'last_prep', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 18, 'ts', NULL, 'href', 'v.jsp?v=4&w_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' ts', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 22, 'v', 'v', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 24, 'st_id', 'st_id', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 62, 'view', NULL, 'href', '/v.jsp?v=4&ts_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' childs', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 63, 'view', NULL, 'href', '/v.jsp?v=2&w_id=$vv[2]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' word', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 5, 'v', 'v', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 64, 'insert', NULL, 'href', '/w/ins_ws.jsp?w_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' sinonim', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (3, 15, 'vs', 'vs', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 64, 'insert', NULL, 'href', '/w/ins_ts.jsp?p_ts_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' child', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 70, 'edit', NULL, 'href', '/w/upd_w.jsp?w_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' value', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 65, 'edit', NULL, 'href', '/w/upd_ts_state.jsp?ts_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' state', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (4, 69, 'edit', NULL, 'href', '/w/upd_w.jsp?w_id=$vv[2]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' word', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 20, 'CA', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 200, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 30, 'goods and services', 'gs', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'substr("', '", 0, 180)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 40, 'price', 'pr', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'substr("', '", 0, 20)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 1000, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 1, 'desc', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 60, 'name', 'name', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'substr("', '", 0, 60)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (201, 45, 'op.', 'v', 'href', '/t/a/?a_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 0, 'id', 'id', 'href', NULL, 'i', '', 1, 'DESC', NULL, 'F', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (5, 0, 'id', 'id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 1, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (5, 10, 'name', 'name', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 22, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (5, 20, 'shn', 'shn', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 333, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (6, 0, 'st_g_id', 'st_g_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (6, 10, 'st_id', 'st_id', 'href', '?v=5&AMP;st_id=$vv[1]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (6, 20, 'orn', 'orn', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 10, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (104, 5, 'More', NULL, 'href', 'a/?a_id=$vv[0]', 'td', NULL, 999, '', NULL, 'T', '" class=small2', 'F', 'Info', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 10, 'contact_id', 'contact_id', 'href', NULL, 'b', '', 999, NULL, NULL, 'F', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 20, 'cat_area_id', 'cat_area_id', 'href', NULL, 'i', '', 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 50, '', 'gs', 'href', NULL, 'i', '', 999, NULL, NULL, 'T', NULL, 'F', 'substr("', '", 0, 100)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 40, '', 'pr', 'href', 'a.jsp?a_id=$vv[0]', 'small', '', 999, NULL, NULL, 'T', NULL, 'F', 'substr("', '", 0, 10)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 0, 'id', 'id', 'href', NULL, 'b', NULL, 2, 'DESC', NULL, 'J', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 5, 'More', NULL, 'href', NULL, 'i', NULL, 999, '', NULL, 'F', NULL, 'F', 'Info', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 10, 'contact_id', 'contact_id', 'href', NULL, 'b', NULL, 999, NULL, NULL, 'F', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 20, 'cat_area_id', 'cat_area_id', 'href', NULL, 'i', NULL, 3, NULL, NULL, 'F', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 45, 'goods or services', 'gs', 'href', NULL, 'i', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 40, 'price', 'pr', 'href', 'a.jsp?a_id=$vv[0]', 'small', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10104, 50, 'time stamp', 'ts', 'href', NULL, 'small', NULL, 1, 'desc', NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (20, 5, 'id', 'id', 'href', '', 'td', ' align=center><font size="2" class=smallbd', 2, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 0, 'Action', NULL, 'href', '?log_for_cid=$vv[1]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', 'LogIn', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 5, 'id', 'id', 'href', '', 'td', ' align=center><font size="2" class=smallbd', 2, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 10, 'name', 'name', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 3, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 20, 'mail', 'mail', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 30, 'pass', 'pass', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'F', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 40, 'phone', 'phone', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 50, 'country', 'country', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 60, 'city', 'city', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (25, 70, 'ts', 'ts', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', NULL, '1', NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 60, 'op.', 'v', 'href', '', 'small', '', 999, NULL, NULL, 'F', '', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10201, 70, 'name', 'name', 'href', NULL, 'small', '', 999, NULL, NULL, 'T', '', 'F', 'substr("', '", 0, 60)', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10567, 60, 'op.', 'v', 'href', '', 'small', '', 999, NULL, NULL, 'T', '', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10567, 10, 'code', 'code', 'href', '?l_code=$vv[0]', 'b', '', 999, NULL, NULL, 'T', '', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10567, 100, 'st_id', 'st_id', 'href', '', 'small', '', 999, NULL, NULL, 'F', '', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10567, 200, 'ordn', 'ordn', 'href', '', 'small', '', 1, NULL, NULL, 'F', '', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10004, 10, 'id', 'id', 'href', NULL, 'i', '', 10, NULL, NULL, 'F', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10004, 80, 'orn', 'orn', 'href', NULL, 'i', '', 1, NULL, NULL, 'F', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10004, 20, 'sn', 'sn', 'href', '?ts_id=$vv[0]', 'small', NULL, 999, NULL, NULL, 'J', '', 'F', '', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (10004, 30, 'v', 'v', 'href', '?ts_id=$vv[0]', 'small', NULL, 90, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (2, 13, 's', NULL, 'href', 'v.jsp?v=3&w_id=$vv[0]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', ' s', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 22, 'Size (byte)', 'zvalue', 'href', '/t/add/form_send_response.jsp?fsr=$vv[0]', 'td', '', 999, NULL, NULL, 'T', '" class=small2', 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (10, 15, 'Cols', NULL, 'href', '?v_html_view_id=37&v_view_id=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'View', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1510, 'View', NULL, 'href', '?v_html_view_id=101&v_form_id=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Fields', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1520, 'View', NULL, 'href', '?v_html_view_id=102&v_form_id=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Sends', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 1500, 'View', NULL, 'href', '/t/v.jsp?v=99&fs_id=$vv[0]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Vield_values', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (102, 1520, 'View', NULL, 'href', '/t/v.jsp?v=103&f_id=$vv[1]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', 'Responses', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 20, 'url', 'url_path', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 1500, 'Size', 'size', 'href', '/t/add/add_url_to_form.jsp?url=$vv[2]', 'td', ' align=center', 999, NULL, NULL, 'T', '', 'F', '', NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 30, 'header', 'header_data', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', 'substr( "', '" , 0, 90 ) ', NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 40, 'ts', 'ts', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (98, 15, 'URL_ID', 'url_id', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 33, 'header', 'header_data', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', '', '', NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 95, 'enc', 'encoding', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', NULL, 'F', 'substr( "', '" , 0, 110 ) ', NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 94, 'cont', 'content_type', 'href', NULL, 'td', NULL, 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 30, 'us__advert_id', 'us__advert_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 55, 'cat_area_id', 'cat_area_id', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (103, 27, 'RC', 'response_code', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 555, 'cont_id', 'cont_id', 'href', '/t/v.jsp?v=25&cont_id=$vv[9]', 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (106, 70, 'url_path', 'url_path', 'href', NULL, 'td', ' align=center><font size="2" class=smallbd', 999, NULL, NULL, 'T', '" class=small2', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1010, 'pfsr_id', 'pfsr_id', 'href', NULL, 'td', ' align=center', NULL, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1030, 'send_enc', 'send_enc', 'href', NULL, 'td', ' align=center', NULL, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
INSERT INTO `html_view_col` VALUES (100, 1020, 'p_form_id', 'p_form_id', 'href', NULL, 'td', ' align=center', NULL, NULL, NULL, 'T', '', 'F', NULL, NULL, NULL, NULL);
