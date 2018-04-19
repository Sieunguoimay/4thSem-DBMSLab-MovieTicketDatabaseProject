CREATE TABLE Theatre
(
  tid INT NOT NULL,
  tname VARCHAR NOT NULL,
  location CHAR NOT NULL,
  No_of_seats INT NOT NULL,
  PRIMARY KEY (tid)
);

CREATE TABLE Customer
(
  c_id INT NOT NULL,
  c_name CHAR(20) NOT NULL,
  Password INT NOT NULL,
  email_id CHAR(15) NOT NULL,
  phone_no INT NOT NULL,
  PRIMARY KEY (c_id)
);

CREATE TABLE Movie
(
  m_id INT NOT NULL,
  m_name CHAR(20) NOT NULL,
  Director VARCHAR(20) NOT NULL,
  actors VARCHAR NOT NULL,
  PRIMARY KEY (m_id)
);

CREATE TABLE Seats
(
  seat_Id INT NOT NULL,
  seat_name VARCHAR NOT NULL,
  tid INT NOT NULL,
  PRIMARY KEY (seat_Id),
  FOREIGN KEY (tid) REFERENCES Theatre(tid)
);

CREATE TABLE Show
(
  st_time CHAR(5) NOT NULL,
  end_time CHAR(5) NOT NULL,
  show_id INT NOT NULL,
  language CHAR(10) NOT NULL,
  m_id INT NOT NULL,
  PRIMARY KEY (show_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id)
);

CREATE TABLE Tickets
(
  ticket_no INT NOT NULL,
  tid INT NOT NULL,
  price INT NOT NULL,
  seat_no CHAR(10) NOT NULL,
  show_date DATE NOT NULL,
  show_id INT NOT NULL,
  tid INT NOT NULL,
  c_id INT NOT NULL,
  m_id INT NOT NULL,
  PRIMARY KEY (ticket_no),
  FOREIGN KEY (show_id) REFERENCES Show(show_id),
  FOREIGN KEY (tid) REFERENCES Theatre(tid),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id)
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

CREATE TABLE Booking
(
  booking_date INT NOT NULL,
  show_id INT NOT NULL,
  m_id INT NOT NULL,
  ticket_no INT NOT NULL,
  c_id INT NOT NULL,
  PRIMARY KEY (show_id, m_id, ticket_no, c_id),
  FOREIGN KEY (show_id) REFERENCES Show(show_id),
  FOREIGN KEY (m_id) REFERENCES Movie(m_id),
  FOREIGN KEY (ticket_no) REFERENCES Tickets(ticket_no),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id)
);