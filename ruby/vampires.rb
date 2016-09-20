puts "How many employees will be processed today?"
employee_total = gets.to_i

while employee_total > 0 do
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i
  current_year = age + year
  if current_year == 2016 || current_year == 2015
    age_test = true
  else
    age_test = false
  end

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
  if garlic_bread == 'yes'
    garlic_bread = true
  else
    garlic_bread = false
  end

  puts "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp
  if health_insurance == 'yes' 
    health_insurance = true
  else
    health_insurance = false
  end

  allergy = nil
  puts "Name all your allergies. Type done when complete:"
  until allergy == "done" || allergy == "sunshine"
    allergy = gets.chomp
  end
  if allergy == "sunshine"
    puts "Probably a vampire."
  else
    vampire_test = 0

    if age_test && (garlic_bread || health_insurance)
      vampire_test = 1
    elsif !age_test && ( !garlic_bread || !health_insurance)
      vampire_test = 2
    end

    if !age_test && !garlic_bread && !health_insurance
      vampire_test = 3
    end

    if name == "Drake Cula" || name == "Tu Fang"
      vampire_test = 4
    end

    case vampire_test
      when 1
        puts "Probably not a vampire."
      when 2
        puts "Probably a vampire."
      when 3
        puts "Almost certainly a vampire."
      when 4
        puts "Definitely a vampire."
      else 
        puts "Results inconclusive."
    end
  end
  employee_total -=1
end 

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."