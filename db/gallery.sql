DROP TABLE artist;
DROP TABLE exhibit;

CREATE TABLE exhibit (
  id SERIAL8 primary key,
  title VARCHAR(255),
  exhibit_date VARCHAR(255),
  artist_id INT4 REFERENCES artist(id)
);

CREATE TABLE artist (
  id SERIAL8 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  dob IN4
);
