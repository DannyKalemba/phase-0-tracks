#Encrypt Method
#-declare string variable
#-advance every letter of string one letter forward
#-Any space character will remain a space character 

def encrypt(encrypt_input)
  index_encrypt = 0
  encrypt_output = ""

  while index_encrypt < encrypt_input.length
    if encrypt_input[index_encrypt] == "z"
      encrypt_output[index_encrypt] = "a"
    elsif encrypt_input[index_encrypt] ==  " "
      encrypt_output[index_encrypt] = " "
    else
      encrypt_output[index_encrypt] = encrypt_input[index_encrypt].next
    end
    index_encrypt += 1
  end  
  return encrypt_output
end

#Decrypt Method
#-declare alphabet as a string
#-find letter from variable in alphabet string
#-replace letter with of the index -1

def decrypt(decrypt_input)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index_decrypt = 0
  decrypt_output = ""

  while index_decrypt < decrypt_input.length
    index_alphabet = 0
    index_alphabet = alphabet.index(decrypt_input[index_decrypt]) 
    decrypt_output[index_decrypt] = alphabet[index_alphabet - 1]
    index_decrypt += 1
  end
  return decrypt_output
end

#User interface
#-Add questions for users
#-Get input from users
#-Add if statement based on user input

puts "Would you like to decrypt or encrypt a password?"
input = gets.chomp
puts "Enter Password:"
password = gets.chomp
if input == "encrypt"
  puts encrypt(password)
else
  puts decrypt(password)
end

#puts encrypt("abc") 
#puts encrypt("zed") 
#puts decrypt("bcd") 
#puts decrypt("afe")
#puts decrypt(encrypt("swordfish"))
#this method call works because it runs encrypt first then uses that output in the decrypt method