
puts "What is the hamster\'s name?"
name = gets.chomp

puts "How loud are you on a scale of 1 - 10? (1 = not loud, 10 = loud)"
loud = gets.chomp.to_i

puts "What is your fur color?"
fur_color = gets.chomp

puts "Is the hamster a good canidate for adoption? (y/n)" 
canidate_for_adoption = gets.chomp

if canidate_for_adoption == 'y'
	then canidate_for_adoption = true
else
	canidate_for_adoption = false
end

puts "What is the hamster\'s estimated age?"
estimated_age = gets.chomp.to_i

if estimated_age == ''
	then estimated_age = nil
end

p "The hamster\'s name is #{name}."
p "On a scale of 1 - 10 (1 = not loud, 10 = loud) the hamster is a #{loud}."
p "The hamster\'s fur color is #{fur_color}."

if canidate_for_adoption == true
	p "Hamster is a canidate for adoption."
else
	p "Hamster is not a canidate for adoption"
end

if estimated_age == 0
	p "No age provided."
else
	p "The hamster\'s estimated age is #{estimated_age}."
end