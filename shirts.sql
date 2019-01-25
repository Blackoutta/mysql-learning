CREATE TABLE shirts(
  shirt_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  article varchar(100),
  color varchar(100),
  shirt_size varchar(100),
  last_worn int
);

INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES ('polo shirt','purple','M',50);
