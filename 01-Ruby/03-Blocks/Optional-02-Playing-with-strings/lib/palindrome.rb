def palindrome?(a_string)
  #TODO: check if a_string is a palindrome
  my_string = a_string.downcase.scan(/\w+/).join
  my_string.eql?(a_string.downcase.scan(/\w+/).join.reverse)
end


# Testing palindrome? function
puts "#{palindrome?("A man, a plan, a canal -- Panama")}" #=> true
puts "#{palindrome?("Madam, I'm Adam!")}" # => true
puts "#{palindrome?("Abracadabra")}" # => false