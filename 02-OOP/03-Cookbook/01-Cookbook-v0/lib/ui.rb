class Display
  def print_recipes(csv_tempo)
    csv_tempo.each_with_index do |index, recipe|
      puts "#{index + 1} - #{recipe}"
    end
  end

  def get_new_recipe
    puts "Which recipe would you like to add?"
    recipe_added = gets.chomp
  end

  def delete_a_recipe
    puts "Which recipe would you like to delete?"
    deleted_recipe = gets.chomp
  end

  def exit
    puts "Googbye!"
  end

end