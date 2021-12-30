def caesar_cipher(string, shift)
  return caesar_cipher(string, shift - 26) if shift > 26

  result = ''
  string.each_char { |char|
  if(char.ord + shift).between?(97, 122) || (char.ord + shift).between?(65, 90)
    result += (char.ord + shift).chr
  elsif char.ord.between?(97, 122)
    if (char.ord + shift) > 122
      result += ((char.ord + shift) - 26).chr
    elsif (char.ord + shift) < 97
      result += ((char.ord + shift) + 26).chr
    end
  elsif char.ord.between?(65, 90)
    if (char.ord + shift) > 90
      result += ((char.ord + shift) - 26).chr
    elsif (char.ord + shift) < 65
      result += ((char.ord + shift) + 26).chr
    end
  else
    result += char
  end
  }
  result
end
