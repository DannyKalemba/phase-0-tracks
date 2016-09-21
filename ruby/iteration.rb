def status_message
  parameter1 = "1"
  parameter2 = "2"
  parameter3 = "3"
  puts "Before"
  yield(parameter1, parameter2, parameter3)
  puts "After"
end

status_message { |parameter1, parameter2, parameter3| puts "#{parameter1} #{parameter2} #{parameter3}"}


zoo = ["lion", "tiger", "bear"]
grocery_list = {"Carrots" => "check", "Apples" => "check", "Bananas" => "check", "Milk" => "check"}

puts "Before .each"
puts zoo

zoo.each do |animal|
  puts animal
  
end

puts "After .each"
puts zoo

puts "Before .map!"
puts zoo

zoo.map! do |animal|
  animal + "s"
  
end

puts "After map!"
puts zoo

puts "Before .each"
puts grocery_list

grocery_list.each do |item, status|
  puts "#{item} = #{status}"
end

puts "After .each"
puts grocery_list


letters = ["a", "b", "c", "d"]
letters_hash = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}

puts letters.reject {|letter| letter == "c" }
puts letters_hash.reject { |letter, number| letter == "c"}

puts letters.find_all {|letter| letter == "c"}
puts letters_hash.find_all { |letter, number| letter == "c"}

puts letters.select {|letter| letter == "c"}
puts letters_hash.select { |letter, number| letter == "c"}

puts letters.drop_while {|letter| letter != "c"}
puts letters_hash.drop_while {|letter, number| letter != "c"}






