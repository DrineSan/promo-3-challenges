# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year

  most_successfull_movies = []

  # convert relative path to absolute path
  if !file_name.start_with?("/")
    file_name = File.expand_path("../#{file_name}", __FILE__)
  end

  options = {
    :encoding => "MacRoman:UTF-8",
    :col_sep  => ','
  }

  earlier_movies = []

  CSV.foreach(file_name, options) do |row|
    earlier_movies << row if row[1].to_i < max_year
  end

  earlier_movies.sort!{ |x, y| y[2].to_i <=> x[2].to_i }

  selected_movies = earlier_movies[0..number-1]

  selected_movies.each do |element|
    movie = Hash.new # ou bien: movie = {}
    movie[:name] = element[0]
    movie[:year] = element[1].to_i
    movie[:earnings] = element[2].to_i
    # ou bien movie = { :name => element[0], :year => element[1].to_i, :earnings => element[2].to_i }
    most_successfull_movies << movie
  end

  # ou bien:
  # most_successfull_movies = selected_movies.map do |element|
  #   { :name => element[0], :year => element[1].to_i, :earnings => element[2].to_i }
  # end

  most_successfull_movies

end

# p most_successfull(3, 1970, "movies.csv")