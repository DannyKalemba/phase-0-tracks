  class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = Random.new.rand(140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name) 
    @reindeer_ranking << name
  end
end

# test code
# santas = []

# genders = ["female", "male", "N/A"]
# ethnicities = ["white", "black", "N/A"]
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

# puts santas[1].celebrate_birthday
# puts santas[2].get_mad_at("Vixen")
# puts santas[0].gender = "bigender"
# puts santas[1].age
# puts santas[0].ethnicity


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
(0..100).each do 
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "Santa's age: #{santa.age}"
  puts "Santa's gender: #{santa.gender}"
  puts "Santa's ethnicity: #{santa.ethnicity}"
end




