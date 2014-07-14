# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year

  csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  filepath    = 'code/DrineSan/promo-3-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/movies.csv'

  CSV.foreach(filepath, csv_options) do |row|
    CSV.select { |num|  num < max_year }
    puts "#{row['Name']}, #{row['Year']}, #{row['Box_office']}"
  end

end
