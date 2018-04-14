CREATE TABLE Admin
(
  admin_id INT NOT NULL,
  Password INT NOT NULL,
  PRIMARY KEY (admin_id)
);

CREATE TABLE Customer
(
  c_id INT NOT NULL,
  c_name CHAR(20) NOT NULL,
  Password INT NOT NULL,
  email_id VARCHAR(50) NOT NULL,
  phone_no INT NOT NULL,
  PRIMARY KEY (c_id)
);

CREATE TABLE Movie
(
  m_id INT NOT NULL,
  m_name CHAR(20) NOT NULL,
  Director VARCHAR(20) NOT NULL,
  actors VARCHAR(20) NOT NULL,
  PRIMARY KEY (m_id)
);

CREATE TABLE Theatre
(
  tid INT NOT NULL,
  tname VARCHAR(20) NOT NULL,
  location CHAR(20) NOT NULL,
  admin_id INT NOT NULL,
  No_of_seats INT NOT NULL,

  PRIMARY KEY (tid),
  FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

CREATE TABLE Show
(
  st_time TIMESTAMP NOT NULL,
  end_time TIMESTAMP NOT NULL,
  show_id INT NOT NULL,
  language CHAR(10) NOT NULL,
  m_id INT NOT NULL,
  PRIMARY KEY (show_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id)
);

CREATE TABLE Seats
(
  seat_Id INT NOT NULL,
  seat_name VARCHAR(10) NOT NULL,
  tid INT NOT NULL,
  PRIMARY KEY (seat_Id),
  FOREIGN KEY (tid) REFERENCES Theatre(tid)
);

CREATE TABLE Tickets
(
  ticket_no INT NOT NULL,
  tid INT NOT NULL,
  price INT NOT NULL,
  show_date DATE NOT NULL,
  booking_date DATE NOT NULL,
  show_id INT NOT NULL,
  admin_id INT NOT NULL,
  c_id INT NOT NULL,

  PRIMARY KEY (ticket_no),
  FOREIGN KEY (show_id) REFERENCES Show(show_id),
  FOREIGN KEY (admin_id) REFERENCES Admin(admin_id),
  FOREIGN KEY (tid) REFERENCES Theatre(tid),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);

CREATE TABLE Discount
(
  offer_id INT NOT NULL,
  m_name CHAR(15) NOT NULL,
  price INT NOT NULL,
  ticket_no INT NOT NULL,
  PRIMARY KEY (offer_id),
  FOREIGN KEY (ticket_no) REFERENCES Tickets(ticket_no)
);
