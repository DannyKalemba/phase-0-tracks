#-Hashes
#-create hash 
#-user input info
#-print info hash to screen
#-ask user if they want to update info
#-change hash value


client_information = {}

# {name: "", age: 0, childern: 0, decor_theme: ""}

def update_hash(update_key)
  key
end

puts "Enter client name:"
  client_information[:name] = gets.chomp
puts "Enter client age:"
  client_information[:age] = gets.chomp.to_i
puts "Is the client married?(y/n)"
  client_information[:married] = gets.chomp
puts "How many children does the client have?"
  client_information[:children] = gets.chomp.to_i
puts "What is the decor_theme?"
  client_information[:decor_theme] = gets.chomp
if client_information[:married] == "y"
  client_information[:married] = true
else
  client_information[:married] = false
end
puts client_information

puts "Enter in the client information you would like to update:"
  if gets.chomp == "none"
    puts client_information  
  else
    update_hash(gets.chomp)
  end