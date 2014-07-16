class Appartement
  def initialize(ville, superficie, prix, vendu)
    @ville = ville
    @superficie = superficie
    @prix = prix
    @vendu = false
  end

  def vendu?
    return @vendu
  end

  def vente
    @vendu = true
  end

 def location
  @location = true
 end


end

first_appartement = Appartement.new("Paris", 25, 250000, false)
second_appartement = Appartement.new("Tours", 60, 100000, false)

puts first_appartement.vente
puts second_appartement.location
