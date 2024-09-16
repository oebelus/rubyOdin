alphabet = ('a'..'z').to_a
length = alphabet.length

caesar_cipher =-> (s, shift) {
    deciphered = "" 

    s.chars.map do |c|
        if alphabet.include? c.downcase
            index = (alphabet.find_index(c.downcase) + shift) % length
            if c.downcase == c
                deciphered += alphabet[index]
            else
                deciphered += alphabet[index].upcase
            end
        else
            deciphered += c
        end
    end
    
    deciphered
}

puts caesar_cipher.call("Hello, World! 123", 3)