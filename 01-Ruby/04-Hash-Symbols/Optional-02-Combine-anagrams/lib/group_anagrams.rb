def group_anagrams(words)
  #TODO: group anagrams
  grouped_anagrams = []

  words.each do |word|
    found_anagram = false

    grouped_anagrams.each do |element|
      if check_anagram(element[0], word)
        element << word
        found_anagram = true
      end
    end

    if !found_anagram
      group = []
      group << word
      grouped_anagrams << group
    end

  end

  return grouped_anagrams

end

def check_anagram(word1, word2)
  same_length = word1.length == word2.length
  same_letters = word1.chars.sort == word2.chars.sort
  return same_length && same_letters
end
# input:
p group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# []
# [["cars"]]
# [["cars", "racs"], ["for"]]


# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
