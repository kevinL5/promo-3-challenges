require 'benchmark'

def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  a_string_new = a_string.downcase.gsub(/\W/, '')
  another_string_new = another_string.downcase.gsub(/\W/, '')

  a_string_new.split('').sort == another_string_new.split('').sort
end

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  hash_1 = {}
  hash_2 = {}

  a_string_new = a_string.downcase.scan(/\w/)
  another_string_new = another_string.downcase.scan(/\w/)

  a_string_new.each do |letter|
  hash_1[letter.to_sym] = a_string_new.count(letter)
  end

  another_string_new.each do |letter|
  hash_2[letter.to_sym] = a_string_new.count(letter)
  end

  hash_1 == hash_2
end

n = 500000

Benchmark.bm do |x|
  x.report { n.times { anagrams?('meuf', 'fume') } }
  x.report { n.times { anagrams_on_steroids?('meuf', 'fume') } }
end