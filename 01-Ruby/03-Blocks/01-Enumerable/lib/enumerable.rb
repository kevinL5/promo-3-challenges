def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |num, index|
    sum = sum + num if index.odd?
  end
  sum
end

sum_odd_indexed([4, 7, 6, 8, 10])

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |num|
    num.even?
  end
end

even_numbers([3, 4, 7, 9, 10, 16])

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject { |word| word.length > max_length }
end

short_words(["you", "are", "my", "playground", "love"], 4)

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |num| num < limit }
end

first_under([10, 11, 4, 3], 5)

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |string| "#{string}!" }
end

add_bang(["yi", "ha"])

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce(:*)
end

product([1, 1, 2, 3, 5])

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  array_new = []

  array.each_slice(2) do |couple|
    p couple
    array_new << couple.sort
  end
  array_new
end

sorted_pairs(["Hello", "Bonjour", "Bonjourno", "Hola"])
