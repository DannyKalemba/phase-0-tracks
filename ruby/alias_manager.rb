#-Alias manager pseudocode
#-Swap first and last name
#-change all of the vowels to the next vowel
#-change all the consonants to the next consonant
#-
#
#
#

def next_vowel(letter)
  vowels = ['a','e','i','o','u']
  index = vowels.rindex(letter)
  if index == 4
    new_vowel = 'a'
  else
    new_vowel = vowels[index+1]
  end
  return new_vowel
end

def swap_names(names)
  arr = names.split
  arr[0], arr[1] = arr[1].capitalize, arr[0].capitalize
  arr = arr.insert(1, ' ')
  swapped_names = arr.join
  return swapped_names
end

def next_consonant(letter)
  consonant = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  index = consonant.rindex(letter)
  new_consonant = ' '
  if index == 20
    new_consonant = 'b'
  else
    new_consonant = consonant[index+1]
  end
  return new_consonant
end

def fake_name(name)
  index = 0
  name_arr = name.downcase.chars
  vowel = ['a','e','i','o','u']
  while index < name_arr.length
    if vowel.include?(name_arr[index]) 
      name_arr[index] = next_vowel(name_arr[index])
    elsif name_arr[index] == ' '
    else
      name_arr[index] = next_consonant(name_arr[index])
    end
    index += 1
  end
  name = name_arr.join
  return swap_names(name)
end


p next_consonant('z')
p next_vowel('a')
p swap_names("Danny Kalemba")

p fake_name('Felicia Torres')








