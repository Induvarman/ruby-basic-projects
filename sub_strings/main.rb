require 'pry-byebug'

def substrings(word, dictionary)
  word_arr = word.downcase.split(" ")
  dictionary.reduce(Hash.new(0)) do |result, current|
    word_arr.each do |word|
      if word.include?(current)
        result[current] += 1
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
