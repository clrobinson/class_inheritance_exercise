require_relative 'mod_flight'

class Parrot < Animal
include Flight

  def initialize
    string = "parrot"
    num_legs = 2
    num_wings = 2
    covered_in = "feathers"
    eats = ["seed", "nut", "fruit"]
    super(string, num_legs, num_wings, covered_in, eats)
  end

  def pluck
    @covered_in = nil
    puts "You plucked the #{@string}. How could you do that to the poor #{@string}?"
  end
end