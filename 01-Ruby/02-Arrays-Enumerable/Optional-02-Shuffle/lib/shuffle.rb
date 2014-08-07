def shuffle(array)
  #TODO: shuffle array manually

  suffled_array = []
  new_array = array.clone

  until new_array.empty?
    element_to_add_to_the_suffled_array = new_array.delete_at(rand(0...new_array.length))
    suffled_array << element_to_add_to_the_suffled_array
  end
  return suffled_array
end

shuffle([1, 2, 3, 4])

def shuffle_bis(array)
  array.sort_by{|element| element[rand(0...array.length)]}
end


shuffle_bis([1, 2, 3, 4])