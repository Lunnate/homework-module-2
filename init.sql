CREATE DATABASE IF NOT EXISTS databased;
CREATE USER IF NOT EXISTS 'user' @'%' IDENTIFIED BY 'password';
GRANT SELECT,
  UPDATE,
  INSERT ON databased.* TO 'user' @'%';
FLUSH PRIVILEGES;
USE databased;

CREATE TABLE IF NOT EXISTS regions (
  country VARCHAR(100) NOT NULL,
  capital_city VARCHAR(50) NOT NULL,
  population INT (10) NOT NULL
);
INSERT INTO regions (country, capital_city, population)
VALUES (
    'Norway',
    'Oslo',
    '5550203'
  ),
  (
    'Dominican Republic',
    'Santo Domingo',
    '11434005'
  ),
  (
    'Kuwait',
    'Al-Kuwait',
    '3138355'
  ),
  ('Nauru',
   'Yaren',
   '10834'
   );
