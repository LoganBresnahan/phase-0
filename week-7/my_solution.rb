# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
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
states = STATE_DATA.keys
states.each {|state| state.virus_effects if state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]) }

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

#Refactored
class VirusPredictor
  attr_accessor :state_of_origin, :population_density, :population
  #It takes arguments and sets equal the instance vairables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #It calls two methods.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
  end

  private
  #This method takes three inputs and depending on the value it prints the if else calculation.
  def predicted_deaths(@population_density, @population, @state)
    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2.0
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
    #puts " and will spread across the state in #{speed} months.\n\n"

  end
end

# Reflection Section
=begin
-What are the differences between the two different hash syntaxes shown 
in the state_data file?
  We have the normal => which can have any type of key and we have the 
  colon system that will work for symbols as keys by switching the : to the
  end of the symbol instead of the front.

-What does require_relative do? How is it different from require?
  require_relative loads files that are relative to the file from which
  it was called. It can only look within the current load path. require uses
  the search path to require.

  require uses the current directory that you are running the program from.

  require_relative uses the directory of where that program itself resides.

-What are some ways to iterate through a hash?
  each, each_key, each_value. It is a lot like going through an array but you need to iterate 
  the keys so you can get the values.

-When refactoring virus_effects, what stood out to you about the 
variables, if anything?
  I don't think I figured out what they wanted us to do. We played around
  with the instance variables and didn't find anything definite. 

-What concept did you most solidify in this challenge?
  private. I didn't know what it did at all. I believe, any method that is
  private cannot be called on instances of the class. They can only be called inside
  the class.

=end