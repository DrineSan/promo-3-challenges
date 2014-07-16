class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

attr_reader :age, :fruits, :height

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
  end

  def dead?
    if @age <= 50
      false
    elsif @age >= 100
      true
    else
      [true, false].sample
    end
  end


  def one_year_passes!
    @age += 1
    if @age <= 5
      @fruits =0
    elsif @age > 15
      @fruits = 0
    elsif @age <= 10
      @fruits = 100
    else
      @fruits = 200
    end
    if @age <= 10
      @height = @age
    else
      @height = 10
    end
  end

  def pick_a_fruit!
    for @fruits in (1..200)
      @fruits -= 1
    end
  end

end



