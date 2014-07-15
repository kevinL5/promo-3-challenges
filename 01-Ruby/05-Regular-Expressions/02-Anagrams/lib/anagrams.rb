require 'benchmark'

def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  a_string_new = a_string.downcase.gsub(/\W/, '')
  another_string_new = another_string.downcase.gsub(/\W/, '')

  a_string_new.split('').sort == another_string_new.split('').sort
end

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  hash = {}

  answer = false

  a_string_new = a_string.downcase.gsub(/\W/, '')
  another_string_new = another_string.downcase.gsub(/\W/, '')

  another_string_new.split('').each do |letter|
    hash[letter] = letter
  end

  if a_string_new.size == another_string_new.size
    another_string_new.split('').each do |letter_ste|
      answer = true if hash[letter_ste] == letter_ste
    end
    answer
  end
  answer
end


n = 50000
text = File.read("spec/anagrams_spec.rb")
other_text = text.reverse
Benchmark.bm do |x|
  x.report { n.times { anagrams?(text, other_text) } }
  x.report { n.times { anagrams_on_steroids?(text, other_text) } }
end
