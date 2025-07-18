def substrings str, arr
    words = str.downcase.split
    acuum = {}

    words.each do |word|
        arr.each do |item|
            if word.include? item
               acuum[item].nil? ? acuum[item] = 1 : acuum[item] += 1
            end
        end
    end

    acuum
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
 