#-Alias manager pseudocode
#-Swap first and last name
#-change all of the vowels to the next vowel
#-change all the consonants to the next consonant
#-return fake name
#-Create a ui for the user to input more than one name
#-out all the names the user input

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

def ui
  list_names = []
  exit = false
  until exit == true
    puts "Enter in a first and last name to get an alias (quit to exit):"
    name = gets.chomp
    if name == 'quit'
      exit = true
    else
      list_names << name
      list_names << fake_name(name)
      puts fake_name(name)
    end
  end
  output(list_names)
end

def output(full_list)
  index = 0
  puts "Here is a list of all of the names you have entered:"
  while index < full_list.length
    puts "#{full_list[index]} is also known as #{full_list[index+1]}"
    index += 2
  end
end

ui








