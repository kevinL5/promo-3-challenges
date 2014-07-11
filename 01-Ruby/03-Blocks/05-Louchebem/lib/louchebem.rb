# Encoding: utf-8
def louchebemize(sentence)

  words = sentence.split(' ')
  translated_word = words.map {|word| louchebemize_word(word)}

  puts translated_word.join(' ')
  translated_word.join(' ')

end

def louchebemize_word(word)
  #TODO: implement your louchebem translator

  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = %w(a e i o u y A E I O U Y)
  sym = [",", "!", "?", ":", ";"]




  if sym.include? word[-2]
    symb_2 = word[-2..-1]
    if vowels.include? word[0]
      translated_word = "l#{word[0..-3]}#{suffix.sample}#{symb_2}"
    elsif vowels.include? word[1]
      translated_word = "l#{word[1..-3]}#{word[0]}#{suffix.sample}#{symb_2}"
    else
      translated_word = "l#{word[2..-3]}#{word[0..1]}#{suffix.sample}#{symb_2}"
    end

  elsif sym.include? word[-1]
    symb_1 = word[-1]
    if vowels.include? word[0]
      translated_word = "l#{word[0..-2]}#{suffix.sample}#{symb_1}"
    elsif vowels.include? word[1]
      translated_word = "l#{word[1..-2]}#{word[0]}#{suffix.sample}#{symb_1}"
    else
      translated_word = "l#{word[2..-2]}#{word[0..1]}#{suffix.sample}#{symb_1}"
    end

  else
    if word.length == 1
    translated_word = word
    elsif vowels.include? word[0]
      translated_word = "l#{word}#{suffix.sample}"
    elsif vowels.include? word[1]
      translated_word = "l#{word[1..-1]}#{word[0]}#{suffix.sample}"
    else
      translated_word = "l#{word[2..-1]}#{word[0..1]}#{suffix.sample}"
    end
  end
end


louchebemize("chat, fou!!")