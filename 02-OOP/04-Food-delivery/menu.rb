require 'csv'
require_relative 'meal'

class Menu

  attr_reader :menu_tab

  def initialize(menu_file_path, header = )
    @menu_file_path = menu_file_path
    @menu_tab = []
    load_csv(menu_file_path)
  end

  def load_csv(file)
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    CSV.foreach(file, csv_options) do |row|
      @menu_tab << Meal.new(row[0], row[1], row[2]])
    end
  end

  def add_meal(name, price)
    @menu_tab[name] = price
  end

end

# menu = Menu.new
# menu.add_meal("crèpe au jambon", 10)
# puts menu_tab.menu