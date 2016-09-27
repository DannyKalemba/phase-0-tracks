# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create hash
  # Create loop to input item as key after there is a space
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

# Method to add an item to a list
# input: item name and optional quantity, list
# steps: 
  # Add Key to hash
  # set quantity of key
# output: hash

# Method to remove an item from the list
# input: item name list
# steps:
  # remove key from hash
# output: hash

# Method to update the quantity of an item
# input: item name and quantity, list
# steps:
  # Update quantity of item
# output: hash

# Method to print a list and make it look pretty
# input: Hash
# steps:
  # Loop through the hash
  # Print out items on list and quantity
# output: print statement

def create_list(list)
  grocery_list = {}
  index = 0
  key_string = ''
  while index < list.length
    if list[index] ==  ' ' || index == list.length-1
      grocery_list[key_string] = 1
      key_string = ''
    else
       key_string += list[index]
    end
    index += 1
  end
  grocery_list
end

def add_item(key, list, value=1)
  list[key] = value 
end

def remove_item(key, list)
  list.delete(key)
  list
end

def update_item(key, value, list)
  list[key] = value
end

def print_list(list)

  p list

end



p create_list("")
add_item("Lemonade",  Tomatoes Onions, Ice Cream)

