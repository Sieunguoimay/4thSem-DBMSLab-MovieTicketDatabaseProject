delete from Tickets;
insert into Tickets(ticket_no, tid, price,
		show_date, booking_date,
		show_id, admin_id, c_id) values(
	123654654, 11112222, 400,
	TO_DATE('2018/04/30','yyyy/mm/dd'),
	TO_DATE('2018/04/28','yyyy/mm/dd'),
	212121, 10001, 10101010
);
insert into Tickets(ticket_no, tid, price,
		show_date, booking_date,
		show_id, admin_id, c_id) values(
	123654456, 11112222, 450,
	TO_DATE('2018/04/26','yyyy/mm/dd'),
	TO_DATE('2018/04/25','yyyy/mm/dd'),
	142142, 10010, 10101011
);
insert into Tickets(ticket_no, tid, price,
		show_date, booking_date,
		show_id, admin_id, c_id) values(
	135566883, 11113333, 550,
	TO_DATE('2018/04/29','yyyy/mm/dd'),
	TO_DATE('2018/04/27','yyyy/mm/dd'),
	123333, 10011, 10101100
);
insert into Tickets(ticket_no, tid, price,
		show_date, booking_date,
		show_id, admin_id, c_id) values(
	123579111, 11114444, 650,
	TO_DATE('2018/05/01','yyyy/mm/dd'),
	TO_DATE('2018/04/28','yyyy/mm/dd'),
	142142, 10001, 10101101
);
insert into Tickets(ticket_no, tid, price,
		show_date, booking_date,
		show_id, admin_id, c_id) values(
	123579222, 11114444, 600,
	TO_DATE('2018/04/14','yyyy/mm/dd'),
	TO_DATE('2018/04/13','yyyy/mm/dd'),
	123333, 10011, 10101101
);


select ticket_no, show_id, c_id from tickets;