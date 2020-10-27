dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  # dictionary.include?(string)
  result = Hash.new(0)
  dictionary.map do |sub|
    if string.downcase.include?(sub)
      result[sub] = string.downcase.scan(sub).count
    end
  end
  return result
end

puts substrings("Howdy partner, sit down! How's it going?",dictionary)