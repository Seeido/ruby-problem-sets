# Method #substrings takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
# It returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

def substrings(string, dict)
    #Split and loop on each word
    string.split(" ").reduce(Hash.new()) do |acc, s_word|
        #Loop on dictionary words and check if string word includes them
        dict.map do |d_word|
            if s_word.include? d_word then
                acc[d_word] ? acc[d_word] += 1 : acc[d_word] = 1 #add +1 to word count unless it's first time then initialize it
            end
        end
        acc
    end
end