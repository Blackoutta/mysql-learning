CREATE TABLE inventory(item_name VARCHAR(100),
                                 price DECIMAL (7,2),
                                       quantity INT);


CREATE TABLE tweets
  (content VARCHAR(140),
           username VARCHAR(20),
                    created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW());

