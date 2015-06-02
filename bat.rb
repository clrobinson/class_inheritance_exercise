require_relative 'mod_flight'

class Bat < Mammal
include Flight

  def initialize
    string = "bat"
    num_legs = 2
    num_wings = 2
    eats = ["fruit"]
    super(string, num_legs, num_wings, eats)
  end
end