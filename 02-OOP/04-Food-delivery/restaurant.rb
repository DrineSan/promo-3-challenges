require_relative 'menu'

class Restaurant

  attr_reader :name, :location, :phone_number, :manager, :delivery_guy


  def initialize (attributes = {})
    @name = name
    @location = location
    @phone_number = phone_number
    @managers = []
    @delivery_guys = []  #   @menu = attributes[:menu]
  end

  def add_manager(manager)
    @manager << manager
    manager.restaurant = self
  end

  def add_delivery_guy(delivery_guy)
    @delivery_guys << delivery_guy
    delivery_guy.restaurant = self
  end

  # def add_menu(menu)
  #   @menu.menu
  # end

end