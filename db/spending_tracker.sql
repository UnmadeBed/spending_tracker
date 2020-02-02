DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS merchants;

CREATE TABLE merchants(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL PRIMARY KEY,
  cost INT,
  name VARCHAR(255)
);

CREATE TABLE tags(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

-- SELECT * FROM merchants;
