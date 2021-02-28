require 'pry'

def sub_strings(string, dictionary)
  string = string.delete(",.?!'").downcase
  string = string.split(' ')
  
  dictionary.reduce(Hash.new(0)) do |newhash, word|
    string.map do |s|
      if s.include? word
        newhash[word] += 1
      end
    end
    newhash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
  "own","part","partner","sit"]

p sub_strings("below", dictionary)
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)
