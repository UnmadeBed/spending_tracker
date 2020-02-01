DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS merchants;

CREATE TABLE merchants(
  id SERIAL,
  name VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL,
  cost INT
);

CREATE TABLE tags(
  id SERIAL,
  name VARCHAR(255)
);

-- SELECT * FROM merchants;
