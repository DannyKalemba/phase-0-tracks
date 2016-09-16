#Encrypt Method
#-declare string variable
#-advance every letter of string one letter forward
#-Any space character will remain a space character 

index_encrypt = 0
encrypt_input = "abcde"

while index_encrypt < encrypt_input.length
  encrypt_input[index_encrypt] = encrypt_input[index_encrypt].next
  index_encrypt += 1
end

puts encrypt_input

#Decrypt Method
#-declare alphabet as a string
#-find letter from variable in alphabet string
#-replace letter with of the index -1

def encrypt
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index_decrypt = 0

  while index_decrypt < encrypt_input.length
    index_alphabet = 0
    index_alphabet = alphabet.index(encrypt_input[index_decrypt]) 
    encrypt_input[index_decrypt] = alphabet[index_alphabet - 1]
    index_decrypt += 1
  end

  puts encrypt_input