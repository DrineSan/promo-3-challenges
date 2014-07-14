def array_to_hash(array)
  #TODO: implement the method :)
hash = Hash.new
array.each_with_index do |value, index|
  hash[index] = value
end
hash
end

puts array_to_hash