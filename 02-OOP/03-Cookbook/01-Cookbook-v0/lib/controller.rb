require_relative 'ui'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = Display.new
  end

  def list
    my_recipes = @cookbook.recipes
    @view.puts_recipes(my_recipes)
  end

  def create
    new_recipe = @view.add_recipe
    @cookbook.add_recipe(Recipe.new(new_recipe[0], new_recipe[1]))
  end

  def destroy
    recipe_id_to_delete = @view.delete_recipe
    @cookbook.remove_recipe(recipe_id_to_delete)
  end

end