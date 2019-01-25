CREATE TABLE customers (id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                               first_name varchar(50),
                                                                          last_name varchar(50),
                                                                                    email varchar(100));


CREATE TABLE orders
  (id int AUTO_INCREMENT PRIMARY KEY,
                                 order_date date, amount decimal(8,2),
                                                         customer_id int,
   FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE);


INSERT INTO orders (order_date,amount,customer_id)
VALUES ('2016/06/06',
        33.67,
        98);

