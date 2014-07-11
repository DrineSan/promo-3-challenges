def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  burgers = {
   "Cheese Burger" => 290,
   "Big Mac"=> 300,
   "Mc Bacon"=> 400,
   "Royal Cheese"=> 130
  }

  sides = {
    "French fries"=> 130,
    "Potatoes" => 130
  }

  beverages = {
    "Coca" => 160,
    "Sprite" => 170
  }

  burgers[burger] + sides[side] + beverages[beverage]

end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
  #orders[order]
end
