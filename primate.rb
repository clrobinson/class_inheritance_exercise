class Primate < Mammal
  def initialize(string, eats)
    num_legs = 2
    num_wings = 0
    super(string, num_legs, num_wings, eats)
  end
end