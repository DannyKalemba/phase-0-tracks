#-Hashes
#-create hash 
#-user input info
#-change values to correct data type
#-print client info to screen
#-ask user if they want to update info
#-change hash value

client_information = {}

def married_method(hash)
  if hash[:married] == "y"
    hash[:married] = true
  else
    hash[:married] = false
  end
  hash
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
married_method(client_information)

puts client_information

puts "Enter in the client information you would like to update:"
 update = gets.chomp
  if update == "none"  
  else
    puts "Enter in a new value for #{update}:"
    update = update.to_sym
    input = gets.chomp
    if update == :age
      client_information[update] = input.to_i
    elsif update == :children
      client_information[update] = input.to_i
    elsif update == :married
      married_method(client_information)
    else
      client_information[update] = input
    end
  end
puts client_information 