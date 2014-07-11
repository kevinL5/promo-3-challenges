def array_to_hash(array)
  #TODO: implement the method :)
  hash = {}

  array.each_with_index do |word, index|
    if block_given?
        hash[yield(index)] = word

    else
        hash[index] = word
    end
  end

  hash
end

puts array_to_hash(["a", "b", "c"]) { |index| "key#{index + 1}" }