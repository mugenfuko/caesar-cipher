def caesar_cipher(str, cipher)
    upper_case = [  'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
                    'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
                ]
    lower_case = upper_case.map {|letter| letter.downcase}
    encoded = ''
    i = 0
    while i < str.length
        if upper_case.include?(str[i])
            index_cipher = upper_case.index(str[i]) + cipher
            index_cipher %= 26
            encoded += upper_case[index_cipher]
        elsif lower_case.include?(str[i])
            index_cipher = lower_case.index(str[i]) + cipher
            index_cipher %= 26
            encoded += lower_case[index_cipher]
        else
            encoded += str[i]
        end
    i += 1
    end
    puts encoded
end
print "What message do you wish to encipher?: "
message = gets.chomp
print "What cipher should be applied (insert a number)?: "
number = gets.chomp.to_i
caesar_cipher(message, number)
