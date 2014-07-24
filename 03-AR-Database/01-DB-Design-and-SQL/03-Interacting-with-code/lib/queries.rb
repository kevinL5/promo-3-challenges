require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  array_count = db.execute "SELECT COUNT(*) FROM #{table_name}"
  array_count [0] [0]
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  array_artists = db.execute "SELECT Name FROM Artist ORDER BY Name ASC"
  array_artists.flatten
end

def love_tracks(db)
  #TODO: return array of love songs
  array_love_song = db.execute "SELECT Name FROM Track WHERE Name LIKE '%love%'"
  array_love_song.flatten
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  time = min_length * 60000
  array_long_tracks = db.execute "SELECT Name FROM Track WHERE Milliseconds > #{time} ORDER BY Milliseconds DESC"
  array_long_tracks.flatten
end

p sorted_artists(db)