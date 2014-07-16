def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words

  hash = {}
  array_text = []
  array_stop = []

  words_split(file_name, array_text)
  words_split(stop_words_file_name, array_stop)

  array_new = array_text.sort - array_stop.sort

  array_new.each do |word|
    if hash.has_key?(word)
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
   Hash[hash.sort_by{|word, number| -number}.first(number_of_word)]
end


def words_split(file_start, file_destination)
  File.open(file_start, "r").each_line do |words_new|
  words = words_new.downcase.scan(/\b[^ .',;!?]+\b/)
    words.each do |word|
      file_destination << word
    end
  end
end

puts most_common_words("lib/source-text.txt", "lib/stop_words.txt", 5)