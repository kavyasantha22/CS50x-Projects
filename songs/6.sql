SELECT name FROM songs WHERE artist_id = (SELECT id from artists WHERE name = 'Post Malone');
