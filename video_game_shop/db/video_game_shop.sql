DROP TABLE consoles;
DROP TABLE games;


CREATE TABLE consoles
(
  id SERIAL8 primary key,
  name VARCHAR(255),
  manufacturer VARCHAR(255)
);

CREATE TABLE games
(
  id SERIAL8 primary key,
  title VARCHAR(255),
  platform VARCHAR(255),
  selling_price INT4,
  buying_cost INT4,
  developer VARCHAR(255),
  stock INT4
);
