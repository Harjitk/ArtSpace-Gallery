DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;


CREATE TABLE artists (
  id SERIAL8 primary key,
  name VARCHAR(255),
  dob INT4,
  picture VARCHAR(255)
);

CREATE TABLE exhibits (
  id SERIAL8 primary key,
  title VARCHAR(255),
  exhibit_date INT4,
  category VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE,
  picture VARCHAR(255)
);
