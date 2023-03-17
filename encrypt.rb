def encrypt(text, shift = -3)
  text.chars.map do |character|
    if alphabet.include?(character)
      index = alphabet.index(character)
      alphabet[(index + shift) % 26]
    else
      character
    end
  end.join
end

def decrypt(text, shift = 3)
  encrypt(text, shift)
end

# def encrypt(text, shift = 3)
#   alphabet = ('A'..'Z').to_a.join
#   shifted_text = alphabet.chars.rotate(shift).join
#   text.tr(alphabet, shifted_text)
# end
