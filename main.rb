def substrings(string, dict)
  words = string.split()
  words_found = {}

  words.each do |word|
    matching_words = dict.select { |value| word.match?(value) }
    next if matching_words.empty?
  
    matching_words.each do |match|
      unless (words_found[match])
        words_found[match] = 0
      end 

      words_found[match] += 1
    end
  end

  words_found
end
