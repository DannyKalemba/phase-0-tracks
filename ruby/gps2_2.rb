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

  puts "Grocery List:"
  list.each_pair {|key, value| puts "#{key}, qty:#{value}"}

end



list = create_list("")
add_item("Lemonade", list, 2)
add_item("Tomatoes", list, 3)
add_item("Onions", list)
add_item("Ice Cream", list, 4)
remove_item("Lemonade", list)
update_item("Ice Cream", 1, list)
print_list(list)

#Reflect
#I learned that pseudocode is very important to mapping out what you are going to be doing in your code. It really helps to organize the whole process 
#The trade-offs are that a hashes is able to store items with different names easily so you can tell what is on your list But it makes it harder to put all the values into a hash
#A method returns the last line 
#You can pass anything into a method as an argument
#You can call methods from other methods or you can create a variable outside of the methods to pass information
#Method structure and uses was solidified working with hashes is still confusing.
