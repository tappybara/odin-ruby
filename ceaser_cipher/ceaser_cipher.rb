def ceaser_cipher(message, shift)
  message.chars.map { | char | shift_char(char, shift) }.join
end

def shift_char (char, shift)

  if char.ord.between?("a".ord, "z".ord)
    # calculate required shift from a
    return ("a".ord + (char.ord - "a".ord + shift) % 26).chr
  end

  if char.ord.between?("A".ord, "Z".ord) 
    return ("A".ord + (char.ord - "A".ord + shift) % 26).chr
  end

  char
end
