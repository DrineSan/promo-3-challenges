# This file contains methods related to your store and its supplies.
# You should complete it according to the instructions in the TODO comments

def store_items
  store = {
    "yogurts" => 2,
    "meat" => 7,
    "vegetables" => 5,
    "potatoes" => 2,
    "rice" => 1
  }
  return store
end

def is_product_in_store?(product)
  # TODO: Check whether product is present in the store items
  products = store_items
  products.has_key?(product)
end

def price_of_product(product)
  # TODO: Return the price of the given product, if it's in store. nil otherwise
  if is_product_in_store?(product)
    price = store_items[product]
  else
    price = nil
  end
  return price
end

def store_items_to_s
  # TODO: Return a String with all store items in the following form:
  # - Meat: 7€
  # - Vegetables: 5€
  # ...
  #
  # TIP: add line breaks in your String with "\n"
  string = ""

  store_items.each do |product, price|
    string += "- #{product.capitalize}: #{price}€\n"
  end

  string.chomp! # remove the last newline character ("\n")

  return string
end
