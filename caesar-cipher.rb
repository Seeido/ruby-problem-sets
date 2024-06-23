# Link explaining what Caesar Cipher is
# https://www.youtube.com/watch?v=36xNpbosfTY&ab_channel=CS50

def caesar_cipher(string, shift)
    string = string.chars.map do |char|
        copy = char.dup #take copy of character to save original letter case
        copy.upcase! unless copy == copy.upcase #make character uppercase only if it's not (to avoid returning nil)
        ascii = copy.ord
        if ascii >= 65 && ascii <= 90 then #make sure it's an alpahbetic letter
            shift.times do
                 ascii < 90 ? ascii += 1 : ascii = 65 #make sure it loops from 'Z' to 'A'
            end
            copy = ascii.chr
            #at this point 'copy' would be uppercase
            char == char.downcase ? copy.downcase! : copy #return to original letter case
        #else if character is a symbol return it as it is
        else
            char
        end
    end
    string.join("")
end