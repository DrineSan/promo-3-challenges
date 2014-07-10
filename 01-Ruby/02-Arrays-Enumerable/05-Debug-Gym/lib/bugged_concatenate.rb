def bugged_concatenate(array)
  array.inject("") { |output, element| output + element }.upcase.to_s
end

def build_1984_title
  bugged_concatenate([1, "9", 84, " ", "George Orwell"])
end