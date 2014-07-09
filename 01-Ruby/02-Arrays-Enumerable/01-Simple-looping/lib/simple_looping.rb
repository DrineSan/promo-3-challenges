def sum_with_while(a,b)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
    sum = a
    while b > a
    a += 1
    sum += a
    end
    return sum
end


def sum_with_for(a,b)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum = 0
  for i in a .. b
  sum += i
  end
  return sum
end

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  fail ArgumentError if min > max
  return min if min == max
  return min+sum_recursive(min+1, max)
end

