def array_to_hash(array)

  hash = {}

  # method array_to_hash called without a block
  # ex:
  #   array_to_hash(["a", "b", "c"])
  if !block_given?

    array.each_with_index do |value, index|
      hash[index] = value
    end

  # method array_to_hash called with a block
  # ex:
  #   array_to_hash(["a", "b", "c"]) { |index| "key#{index + 1}" }
  # ex2:
  #   array_to_hash(["a", "b", "c"]) do |index|
  #     "key#{index + 1}"
  #   end
  else

    array.each_with_index do |value, index|
      key = yield(index)
      hash[key] = value
    end

  end

  hash

end

puts array_to_hash(["a", "b", "c"])