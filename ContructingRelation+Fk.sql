CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL
);

INSERT INTO "user"(username)VALUES
('Alice'),
('Bob'),
('David')

SELECT * FROM "user"

CREATE TABLE post(
  id SERIAL PRIMARY KEY,
  title text NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

INSERT INTO post (title, user_id) VALUES 
('My first post', 1),
('Learning SQL', 2),
('PostgreSQL is awesome', 3),
('Database design tips', 2),
('Best practices for indexing', 3),
('How to use JOIN in SQL', 1),
('Understanding transactions', 2),
('Normalization in databases', 3),
('Optimizing queries', 2),
('Advanced SQL techniques', 3); 

SELECT * FROM post

DELETE FROM "user"
WHERE username = 'Alice';

drop table post

drop table "user"

TRUNCATE Table post
