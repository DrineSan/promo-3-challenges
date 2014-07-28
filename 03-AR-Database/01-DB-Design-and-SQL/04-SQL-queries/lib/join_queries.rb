require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

# first_result = rows[0]
# first_result[0]

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute "SELECT t.name, a.title, ar.name FROM Track t, Album a, Artist ar"
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)

end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
end