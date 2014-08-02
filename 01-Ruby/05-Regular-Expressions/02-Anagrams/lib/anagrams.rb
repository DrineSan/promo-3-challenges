def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  same_length = a_string.length == another_string.length
  same_letters = a_string.downcase.delete(" !?.,").chars.sort == another_string.downcase.delete(" !?.,").chars.sort
  same_length && same_letters
end

def anagrams_on_steroids?(a_string, another_string)
  letters_number(a_string) == letters_number(another_string)
end

def letters_number(string)

  #TODO: implement the improved method
  letters_number = Hash.new(0)
  #
  # ou: letters_number.default = 0

  string.downcase.delete(" !?.,").chars.each do |letter|

    letters_number[letter] += 1

    # si le hash n'a pas de valeur par défaut égale à 0, sa valeur
    # par défaut est nil, donc on pourrait faire :
    #
    #   letters_number[letter] = (letters_number[letter] || 0) + 1
  end

  letters_number

end

