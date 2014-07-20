require 'csv'
require_relative 'recipe'

class Cookbook

  attr_reader :recipes

  def initialize(csv_file)

    @csv_file = csv_file
    @recipes = []

    CSV.foreach(csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end

  end


  # def recipes
  #   return @recipes
  # end


  def add_recipe(recipe)

    @recipes << recipe

    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |r|
        csv << [r.name, r.description]
      end
    end

  end


  def remove_recipe(recipe_id)

    @recipes.delete_at(recipe_id)

    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |r|
        csv << [r.name, r.description]
      end
    end

  end

end
