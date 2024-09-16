def substrings(s, arr)
    hash = Hash.new

    arr.each do |el|
        hash[el] = s.scan(el).count
    end
    
    hash.select { |k, v| v > 0 }
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)