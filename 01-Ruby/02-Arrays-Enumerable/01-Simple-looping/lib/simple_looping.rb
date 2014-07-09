def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
  sum = min
  while min < max
    sum = sum + min +=1
    puts sum
  end
  sum
end

sum_with_while(1,100)

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
    sum = min
  for num in min..max-1
    sum = sum + min +=1
    puts sum
  end
  sum
end

sum_with_for(1,100)

def sum_recursive(min,max)
    return sum = min + sum_recursive(min+1, max) if min < max
    return min if min == max
    raise ArgumentError if min > max
end

sum_recursive(9,9)

  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself