DROP TABLE IF EXISTS video_game_vine_reviews;
DROP TABLE IF EXISTS sofware_vine_reviews;

CREATE TABLE video_game_vine_reviews (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

CREATE TABLE sofware_vine_reviews (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

SELECT * FROM video_game_vine_reviews;
SELECT * FROM sofware_vine_reviews;