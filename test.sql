CREATE TABLE comments (content VARCHAR(100),
                               created_at TIMESTAMP DEFAULT now());


INSERT INTO comments (content)
VALUES ("lol, what a funny article.");


CREATE TABLE comments2
  (content VARCHAR(100),
           changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);

