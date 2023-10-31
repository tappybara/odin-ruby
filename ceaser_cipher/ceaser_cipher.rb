def ceaser_cipher(message, shift)
  message.chars.map { | char | shift_char(char, shift) }.join
end

def shift_char (char, shift)
  # char is lowercase
  if char.ord.between?(97, 122)
    return (97 + (char.ord - 97 + shift) % 26).chr
  end

  # char is uppercase
  if char.ord.between?(65, 90) 
    return (65 + (char.ord - 65 + shift) % 26).chr
  end

  char
end
