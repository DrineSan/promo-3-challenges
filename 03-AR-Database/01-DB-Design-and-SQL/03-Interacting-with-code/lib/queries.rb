require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  rows_number = db.execute "SELECT MAX(#{table_name}Id) FROM #{table_name}" #IL faut peut-être ajouter [0][0]
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  sorted_artists = db.execute("SELECT name from Artist ORDER BY name ASC").flatten
end

def love_tracks(db)
  #TODO: return array of love songs
  love_songs = db.execute("SELECT name FROM Track WHERE name LIKE '%love%'").flatten
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  min_length = 60*10**3
  long_songs = db.execute("SELECT name FROM Track WHERE Milliseconds > #{min_length}").flatten
end

