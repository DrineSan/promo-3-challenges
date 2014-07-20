class Recipe

  attr_reader :name, :description
  # same as:
  #
  # def name
  #   return @name
  # end
  #
  # def description
  #   @description
  # end


  attr_writer :name, :description
  # def name=(value)
  #   @name = value
  # end
  #
  # def description=(description)
  #   @description = description
  # end

  def initialize(name, description)
    @name = name
    @description = description
  end

end

# r = Recipe.new("gaspacho")
# r.name
# r.name = "soupe"
# r.description = "hfkhfk"
# r.description # => "hfkhfk"