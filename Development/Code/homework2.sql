CREATE TABLE project(
  title TEXT,
  category TEXT,
  funding_goal INTEGER,
  start_date TEXT,
  end_date TEXT
);


ALTER TABLE artists ADD COLUMN instrument TEXT;

DROP TABLE artists;
CREATE TABLE artists(
  worstbandname TEXT,
  fartsperday INTEGER
);

ALTER TABLE artists RENAME TO musicians;

DROP TABLE musicians;

