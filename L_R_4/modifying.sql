
INSERT INTO Sources (id, s_name) VALUES 
  (2000, 'Ken Henderson');
  

INSERT INTO Editor (id, p_name, city, zip) VALUES 
  (2000, 'Silhouette', 'Columbus', 43210);


INSERT INTO Book (id, title, pub_id, prod_year, price, category, quantity, b_format, filesize) VALUES 
  ('156158648X0', 'The New City Home: Smart Solutions for Metro Living', 61, 2003, 24.95, 'Home Design', 20, 'epub', 3188);

INSERT INTO SourcePubli (id, prod_id, s_id) VALUES 
  (2000, '156158648X0', 96);

INSERT INTO Customer (id, c_name, c_email) VALUES 
  (2000, 'William Gardner', 'williamgardner@gmail.com');

DELETE FROM Sources WHERE id = 2000;

DELETE FROM Editor WHERE id = 2000;

DELETE FROM Book WHERE id = '156158648X0';

DELETE FROM SourcePubli WHERE id = '04402375560';

DELETE FROM Customer WHERE id = 2000;
