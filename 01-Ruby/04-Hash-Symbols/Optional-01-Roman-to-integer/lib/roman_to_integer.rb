def roman_to_integer(roman_string)
  #TODO: translate roman string to integer
  roman = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  split_roman = []
  split_roman << roman_string.split('')

  count = 0

  split_roman.each_with_index do |roman_letter, index|
    if roman[roman_letter[index]] <= roman[roman_letter[index-1]
      count += roman[roman_letter]
    else
      count -= roman[roman_letter]
    end
  end
  count
end

# testing your program
puts roman_to_integer('IV')
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true

