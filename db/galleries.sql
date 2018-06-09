DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists (
  id SERIAL8 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  dob INT4
);

CREATE TABLE exhibits (
  id SERIAL8 primary key,
  title VARCHAR(255),
  exhibit_date VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE
);
