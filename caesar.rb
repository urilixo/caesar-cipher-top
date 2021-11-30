
#A = 65 Z=90, a=97 z=122

def caesar_cipher(string, shift)
    result = ""
    string.each_char {|char| 
        if (char.ord + shift).between?(97,122) || (char.ord + shift).between?(65,90)
            result += (char.ord + shift).chr
        elsif (char.ord.between?(97,122))
            if (char.ord+shift) > 122
                result += ((char.ord + shift) - 26).chr
            elsif (char.ord+shift) < 97
                result += ((char.ord + shift) + 26).chr
            end
        elsif (char.ord.between?(65,90))
            if (char.ord+shift) > 90
                result += ((char.ord + shift) - 26).chr
            elsif (char.ord+shift) < 65
                result += ((char.ord + shift) + 26).chr
            end
        else
            result += char
        end
    }
    result
end

text = caesar_cipher("What a string!", 5)
puts text