

CREATE TABLE Warehouse (
  id int NOT NULL,
  city varchar(20) NOT NULL,
  zip varchar(10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Sources (
  id int NOT NULL,
  s_name varchar(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Editor (
  id int NOT NULL,
  p_name varchar(40) NOT NULL,
  city varchar(20) NOT NULL,
  zip varchar(10) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Customer (
  id int NOT NULL,
  c_name varchar(20) NOT NULL,
  c_email varchar(40) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Stock (
  id varchar(20) NOT NULL,
  pub_id int NOT NULL,
  title varchar(100) NOT NULL,
  price real NOT NULL,
  category varchar(30),
  quantity int NOT NULL DEFAULT 10,
  m_link varchar(40),
  prod_year int NOT NULL,
  filesize int,
  PRIMARY KEY (id),
  FOREIGN KEY (pub_id) REFERENCES Editor(id) ON DELETE CASCADE
);

CREATE TABLE Book (
  id varchar(20) NOT NULL,
  pub_id int NOT NULL,
  title varchar(100) NOT NULL,
  price real NOT NULL,
  category varchar(30),
  quantity int NOT NULL DEFAULT 10,
  b_format varchar(40),
  prod_year int NOT NULL,
  filesize int,
  PRIMARY KEY (id),
  FOREIGN KEY (pub_id) REFERENCES Editor(id) ON DELETE CASCADE
);



CREATE TABLE PublisherPhone (
  pub_phone varchar(15) NOT NULL,
  pub_id int NOT NULL,
  PRIMARY KEY (pub_phone),
  FOREIGN KEY (pub_id) REFERENCES Editor(id) ON DELETE CASCADE
);

CREATE TABLE CustomerPhone (
  cust_phone varchar(15) NOT NULL,
  c_id int NOT NULL,
  PRIMARY KEY (cust_phone),
  FOREIGN KEY (c_id) REFERENCES Customer(id) ON DELETE CASCADE
);

CREATE TABLE WarehousePubl (
  id int NOT NULL,
  w_id int NOT NULL,
  prod_id varchar(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (w_id) REFERENCES Warehouse(id) ON DELETE CASCADE,
  FOREIGN KEY (prod_id) REFERENCES Book(id) ON DELETE CASCADE
);

CREATE TABLE SourcePubli (
  id int NOT NULL,
  s_id int NOT NULL,
  prod_id varchar(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (s_id) REFERENCES Sources(id) ON DELETE CASCADE,
  FOREIGN KEY (prod_id) REFERENCES Book(id) ON DELETE CASCADE
);
