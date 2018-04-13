delete from Show;
insert into Show(st_time, end_time, show_id, language, m_id) values(
	TO_DATE('2018/02/20 21:00:00','yyyy/mm/dd hh24:mi:ss'),
	TO_DATE('2018/02/20 23:30:00','yyyy/mm/dd hh24:mi:ss'), 
	142142,'English',111111
);

insert into Show(st_time, end_time, show_id, language, m_id) values(
	TO_DATE('2018/04/20 20:00:00','yyyy/mm/dd hh24:mi:ss'),
	TO_DATE('2018/04/20 22:30:00','yyyy/mm/dd hh24:mi:ss'), 
	123333,'English',111122
);

insert into Show(st_time, end_time, show_id, language, m_id) values(
	TO_DATE('2018/04/15 17:00:00','yyyy/mm/dd hh24:mi:ss'),
	TO_DATE('2018/04/15 20:30:00','yyyy/mm/dd hh24:mi:ss'), 
	212121,'English',112211
);

select show_id, m_id from Show;