# The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# id	artist	name	release_date	sales	genre
# 42	Pink Floyd	The Dark Side of the Moon	1973	26.1	Progressive rock
# 68	Pink Floyd	The Wall	1979	18.7	Progressive rock

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
# 1967

# The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';
# genre
# Grunge, alternative rock

# Which albums were released in the 1990s
SELECT name FROM albums WHERE release_date BETWEEN '1990' AND '1999';

#     name
# The Bodyguard
# Come On Over
# Jagged Little Pill
# Falling Into You
# Dangerous
# Let's Talk About Love
# Gold: Greatest Hits
# The Immaculate Collection
# Titanic: Music from the Motion Picture
# Metallica
# Nevermind
# Supernatural


# Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales < '20.0';
#     name
# Grease: The Original Soundtrack from the Motion Picture
#     Bad
#     Sgt. Pepper's Lonely Hearts Club Band
# Dirty Dancing
# Dangerous
# Let's Talk About Love
#     The Immaculate Collection
#     Abbey Road
#     Born in the U.S.A
#     Brothers in Arms
#     Titanic: Music from the Motion Picture
#     Nevermind
#     The Wall
#     Goodbye Yellow Brick Road

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name FROM albums WHERE genre LIKE '%Rock';
# if you include the % you can ge the other options