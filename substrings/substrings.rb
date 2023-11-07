def substrings (phrase, dictionary)

  matches = Hash.new

  dictionary.each do |word|
    lowercase_phrase = phrase.downcase
    lowercase_word = word.downcase
    count = lowercase_phrase.scan(/#{lowercase_word}/).length
    if count > 0
      matches[word] = count
    end
  end

  puts matches
  matches
end
