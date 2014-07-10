def shuffle_word(a_word)
  #TODO: refactor this method

  a_word.upcase.chars.to_a.shuffle

end


def prime?(n)
  (2...n).all? do |intermediate_n|
    n % intermediate_n != 0
  end
end


def quote_prime_numbers(n)
  prime_numbers = (1..n).select do |i|
    prime?(i)
  end
  prime_numbers.map{ |prime_num| "#{prime_num} is prime"}
end
