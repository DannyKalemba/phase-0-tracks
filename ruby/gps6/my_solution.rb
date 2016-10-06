# Virus Predictor

# I worked on this challenge [with: Eraince ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is used to open another file in the same folder. The difference between require_relative and require is that when using require you have to type out the whole path to the file that you want to use. require_relative is a short version of require.
#

require_relative 'state_data'

class VirusPredictor

  #This method creates initial values for the variables in the class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method calls predicted_deaths and speed_of_spread methods with the given variables
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #compares population_density with different values and does a calculation based on the if statement. Then it prints out the number of deaths for the state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 200 && @population_density >= 50
      number_of_deaths = @population * ((@population_density / 50).floor) * 0.1
    else
      number_of_deaths = (@population * 0.05).floor
    end
  

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  #compares population density to a value and calculates the speed that the virus will spread. Then it outputs how fast the virus will spread across the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density < 200 && @population_density >= 100
      speed += (300 / @population_density).floor() * 0.5 
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, hash| 
  state_name = VirusPredictor.new(state, hash[:population_density], hash[:population])
  state_name.virus_effects
end
  

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#The => allows a string to be used as a key where : creates a symbol

#require_relative is used to open another file in the same folder. The difference between require_relative and require is that when using require you have to type out the whole path to the file that you want to use. require_relative is a short version of require.

# .each .each_key and .each_value

#The @ symbol meant that the variables did not need to be passed in.

#iterating through a hash