
ALTER TABLE person5
 ALTER COLUMN user_age DROP NOT NULL

-- unique primary,foreign key multiple value add korte pari

ALTER TABLE person5
ADD constraint unique_person5_user_age UNIQUE(age);

SELECT * FROM person5

ALTER TABLE person5
DROP constraint unique_person5_user_age;

-- all row remove kore dibe but structure same
TRUNCATE TABLE person5

-- pura table ke delete kore dibe
DROP TABLE person5
