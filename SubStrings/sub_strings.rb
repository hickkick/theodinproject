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
 