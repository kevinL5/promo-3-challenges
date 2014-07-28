require 'sqlite3'

# opens the database
DATABASE_PATH = "lib/db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  stm = db.execute "SELECT t.name ,al.title , ar.name
        FROM Track t
        JOIN Album al ON (t.albumId = al.AlbumId)
        JOIN Artist ar ON (al.ArtistId = ar.ArtistId)"
  stm.flatten
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  stm = db.execute "SELECT COUNT(*), AVG(t.milliseconds)
                  FROM Track t
                  JOIN Genre g ON ( t.genreid = g.genreid)
                  WHERE g.name = '#{category}'"
  stats = {category: category, number_of_songs: stm[0][0], avg_length: stm[0][1] / 1000 }
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  stm = db.execute "SELECT ar.name, COUNT(*) AS number
                  FROM Track t
                  JOIN Album al ON ( t.albumId = al.AlbumId )
                  JOIN Artist ar ON ( al.ArtistId = ar.ArtistId )
                  JOIN Genre g ON ( t.genreid = g.genreid )
                  WHERE g.name = 'Rock'
                  GROUP BY ar.name
                  ORDER BY number DESC
                  LIMIT 5"
  puts "The top 5 rock stars are ..... #{stm[0][0]} with #{stm[0][1]} tracks, #{stm[1][0]} with #{stm[1][1]} tracks, #{stm[2][0]} with #{stm[2][1]} tracks, #{stm[3][0]} with #{stm[3][1]} tracks and #{stm[4][0]} with #{stm[4][1]} tracks."
end