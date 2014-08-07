def shuffle(array)
  #TODO: shuffle array manually

  shuffled_array = []
  new_array = array.clone

  until new_array.empty?
    element_to_add_to_the_shuffled_array = new_array.delete_at(rand(0...new_array.length))
    shuffled_array << element_to_add_to_the_shuffled_array
  end

  return shuffled_array

end

# p shuffle([1, 2, 3, 4])

def shuffle_bis(array)
  array.sort_by { |element| rand(0...array.length) }
end

# p shuffle_bis([1, 2, 3, 4])