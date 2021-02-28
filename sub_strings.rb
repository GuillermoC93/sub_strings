require 'pry'

def sub_strings(string, dictionary)
  
  dictionary.reduce(Hash.new(0)) do |result, word|
      if string.include? word
        result[word] += 1
        result
      else
        result
      end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
  "own","part","partner","sit"]

p sub_strings("below", dictionary)