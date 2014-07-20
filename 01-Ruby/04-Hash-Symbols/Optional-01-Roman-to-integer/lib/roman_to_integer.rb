def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  single_characters = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
  }
  roman_letters = roman_string.split(//)

  integers = roman_letters.map { |letter| single_characters[letter] }

  result = 0

  integers.each_with_index do |integer, n|
    if integers[n+1] == nil
      result += integer
    elsif integer < integers[n+1]
      result -= integer
    else
      result += integer
    end
  end

  result

end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true

