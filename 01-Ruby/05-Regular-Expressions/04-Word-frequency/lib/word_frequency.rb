
def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words

  words_occurence = Hash.new(0)
  file_array = []
  stop_words_array = []

  File.open(file_name, "r").each_line do |line|
    line.split(/[ \.,!\?"'\(\)\[\]\n«»]+/).each do |word|
      file_array << word.downcase
    end
  end


  File.open(stop_words_file_name, "r").each_line do |word|
    stop_words_array << word.split(/\n/)[0]
    # ou chomp
  end


  file_array.each do |word|

    if !stop_words_array.include?(word)
      words_occurence[word] += 1
    end
  end


  hash_to_array = words_occurence.to_a
  hash_to_array.sort! { |x,y| y[1] <=> x[1] } # reverse order

  hash_to_array[0..(number_of_word-1)].to_h

end

most_common_words("lib/source-text.txt", "lib/stop_words.txt", 3)
