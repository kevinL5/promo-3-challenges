# Encoding: utf-8




def louchebemize(sentence)

  words = sentence.split(' ')
  translated_word = words.map {|word| louchebemize_word(word)}
  translated_word.join(' ')

end

def louchebemize_word(word)
  #TODO: implement your louchebem translator

  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = %w(a e i o u y)


  if word.length == 1
    translated_word = word
  elsif vowels.include? word[0]
    translated_word = "l#{word}#{suffix.sample}"
  elsif vowels.include? word[1]
    translated_word = "l#{word[1..-1]}#{word[0]}#{suffix.sample}"
  else
    translated_word = "#{word[2..-2]}#{word[0..1]}#{suffix.sample}"
  end
  translated_word
end


louchebemize("bonjour salut holla")