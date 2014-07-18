class Car

  attr_accessor :color
  # attr_reader :color
  # attr_writer :color

  def initialize(my_color)
    @color = my_color
  end

  # def color
  #   return @color
  # end

  # def color=(new_color)
  #   @color = new_color
  # end

end

car1 = Car.new("green")
car1.color # => "green"
car1.color = "yellow"

car2 = Car.new("red")