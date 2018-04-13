After login with your account

To run .sql file use command "source <filename>.sql" or "@<filename>.sql"

To creat all tables run file '@create_tables.sql'. Run this command only one at the beginning.

To insert values into tables, run each .sql files with prefix 'insert_'.sql. Make sure that you insert with the correct order that is table with foreign keys should be insert after the referenced table.
one


Since the data is still few. You can insert new rows into the database, it's good but remember to save your queries to this README file or you can simply add to the insert_.sql files.


13/4/2018 Problem about No_of_seats is corrected by moving this attribute from Seats to Theatre.
	In tickets, removed the hall_no and seat_no. The database is now inserted.
	The ppt file is corrected accordingly.
