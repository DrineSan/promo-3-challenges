
a = ["a", "b", "c", "d"]

# Ex 1: b is a copy of a in reverse order
b = a.reverse

# Ex 2: c is an array listing the indexes of elements of a
c = a.map.with_index{ |value, index| index }

# Ex 3: square is an array containing the squared values of c
square = c.map{ |index| index * index }

# Ex 4: s is the sum of the elements of d
d = [0, -3, 6, 9, -1]
s = 0
d.each do |el|
  s += el
end

# Ex 5: m is the result of multiplying all elements of f
f = [3,5,2,1]
m = 1
f.each do |el|
  m *= el
end


# Ex 6:
#   - "even" is an ordered list of unique even integers from h
h = [4,8,7,2,3,9,8,3,16,5,2]
even = h.select{ |num|  num.even?  }
even = even.sort
# even = even.uniq


list = []
even.each_with_index do |el, index|
  if el != even[index + 1]
    list << el
  end
end

even = list


# Ex 7: k is an array containing, for each position n of an element of j:
#   - true if the element is strictly lower than the next element in j
#   - false if the element is greater or equal to the next element in j
#   - nil if there is no element following (the current element is the last one)
j = [5,6,2,1,4,4]

k = []
j.each_with_index do |el, index|
  if j[index+1] == nil
    k << nil
  elsif el < j[index+1]
    k << true
  else
    k << false
  end
end

# Ex 8: write consecutive_pairs_2 that does the same thing as consecutive_pairs
#       but using a ".times do ..." loop internally
def consecutive_pairs(array)

  result = []

  array.each_with_index { |number, position|
    result << [number, array[position + 1]]
  }

  return result

end

def consecutive_pairs_2(array)

  result = []

  pairs_number = array.size - 1
  pairs_number.times do |i|
    result << [array[i], array[i+1]]
  end
  return result

end

# Ex 9: read about the method Enumerable#each_cons
#       (http://www.ruby-doc.org/core-2.1.2/Enumerable.html#method-i-each_cons)
#       and write consecutive_pairs_3 with it!
def consecutive_pairs_3(array)

  result = []

  array.each_cons(2) { |i| result << i }
  return result

end




















puts "1. #{b == ["d", "c", "b", "a"]}"
puts "2. #{c == [0, 1, 2, 3]}"
puts "3. #{square == [0, 1, 4, 9]}"
puts "4. #{s == 11}"
puts "5. #{m == 30}"
puts "6. #{even == [2,4,8,16]}"
puts "7. #{k == [true, false, false, true, false, nil]}"
puts "8. #{consecutive_pairs_2(["a", "e", "i", "o"]) == [["a", "e"], ["e", "i"], ["i", "o"]]}"
puts "9. #{consecutive_pairs_3(["a", "e", "i", "o"]) == [["a", "e"], ["e", "i"], ["i", "o"]]}"
