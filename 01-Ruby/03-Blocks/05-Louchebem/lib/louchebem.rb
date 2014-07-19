# Encoding: utf-8



def louchebemize(sentence)

  words = sentence.split

  # variante:
  #   louchebemized_words = words.map { |word| louchebemize_word(word) }

  louchebemized_words = []
  words.each do |word|
    louchebemized_words << louchebemize_word(word)
  end

  louchebemized_words.join(" ")

end



def louchebemize_word(word)
  #TODO: implement your louchebem translator

  # isoler la consonne ou le groupe de consonnes au début du mot
  # la consonne ou le groupe de consonnes au début du mot est reportée à la fin du mot
  # remplacer la consonne ou le groupe de consonnes au début du mot par l

  if word.size == 1
    return word
  end

  word = word.split(//)

  caracteres_spe = [",", "!"]

  temp_word = []

  while caracteres_spe.include?(word.last)
    temp_word << word.pop
  end

  temp_word.reverse!

  voyelles = ["a", "e", "i", "o", "u", "y"]

  first_is_voyelle = false

  # variante 1:
  #   first_is_consonne = voyelles.all? { |voyelle| voyelle != word.first }
  #
  # variante 2:
  #   first_is_voyelle = voyelles.include?(word.first)

  until first_is_voyelle

    voyelles.each do |voyelle|
      if voyelle == word.first
        first_is_voyelle = true
        break
      end
    end

    if !first_is_voyelle
      first_letter = word.delete_at(0)
      word << first_letter
    end

  end

  word.unshift("l")

  # ajouter un suffixe argotique au choix, par exemple -em/ème, -ji, -oc, -ic, -uche, -ès

  suffixe = ["em", "é", "ji", "oc", "ic", "uche", "ès"].sample
  word << suffixe

  # variante:
  #   word.concat(temp_word)
  word << temp_word.join

  word.join

end


