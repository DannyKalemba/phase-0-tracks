
puts "What is the hamster's name?"
name = gets.chomp

puts "How loud is the hamster on a scale of 1 - 10? (1 = not loud, 10 = loud)"
loud = gets.chomp.to_i

puts "What is the fur color of the hamster?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)" 
canidate_for_adoption = gets.chomp

if canidate_for_adoption == 'y'
	then canidate_for_adoption = true
else
	canidate_for_adoption = false
end

puts "What is the hamster's estimated age?"
estimated_age = gets.chomp

if estimated_age == ''
	then estimated_age = nil
else
  estimated_age = estimated_age.to_i
end

p "The hamster's name is #{name}."
p "On a scale of 1 - 10 (1 = not loud, 10 = loud) the hamster is a #{loud}."
p "The hamster's fur color is #{fur_color}."

if canidate_for_adoption == true
	p "Hamster is a candidate for adoption."
else
	p "Hamster is not a candidate for adoption"
end

if estimated_age == nil
	p "No age provided."
else
	p "The hamster's estimated age is #{estimated_age}."
end