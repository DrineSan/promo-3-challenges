class Display

  def puts_recipes(recipes)
    recipes.each_with_index do |element, index|
      puts "#{index+1}. #{element.name}: #{element.description}"
    end
  end

  def add_recipe
    puts "Which recipe would you like to add?"
    recipe_name = gets.chomp
    puts "Please describe your recipe:"
    recipe_description = gets.chomp
    return [recipe_name, recipe_description]
  end

  def delete_recipe
    puts "Please provide the number of the recipe you would like to delete."
    number = gets.chomp.to_i
    return number - 1
  end

end