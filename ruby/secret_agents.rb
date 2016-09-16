#Encrypt Method
#-declare string variable
#-advance every letter of string one letter forward
#-Any space character will remain a space character 

def encrypt(encrypt_input)
  index_encrypt = 0

  while index_encrypt < encrypt_input.length
    if encrypt_input[index_encrypt] == "z"
      encrypt_input[index_encrypt] = "a"
    else
      encrypt_input[index_encrypt] = encrypt_input[index_encrypt].next
    end
    index_encrypt += 1
  end

  puts encrypt_input  
end

#Decrypt Method
#-declare alphabet as a string
#-find letter from variable in alphabet string
#-replace letter with of the index -1

def decrypt(encrypt_input)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index_decrypt = 0

  while index_decrypt < encrypt_input.length
    index_alphabet = 0
    index_alphabet = alphabet.index(encrypt_input[index_decrypt]) 
    encrypt_input[index_decrypt] = alphabet[index_alphabet - 1]
    index_decrypt += 1
  end

  puts encrypt_input
end

encrypt("abc") 
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")