# frozen_string_literal: true

alphabet = ('a'..'z').to_a
length = alphabet.length

def caesar_cipher(str, shift)
    deciphered = ''

    str.chars.map do |c|
        if alphabet.include? str.downcase
            index = (alphabet.find_index(c.downcase) + shift) % length
            if c.downcase == str
                deciphered += alphabet[index]
            else
                deciphered += alphabet[index].upcase
            end
        else
            deciphered += str
        end
    end

    deciphered
end

puts caesar_cipher('Hello, World! 123', 3)
