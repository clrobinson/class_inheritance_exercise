class Amphibian < Animal
  def initialize(string, num_legs, eats)
    num_wings = 0
    covered_in = "slime"
    super(string, num_legs, num_wings, covered_in, eats)
  end

  def wash
    @covered_in = nil
    puts "You washed the #{@string}. How could you do that to the poor #{@string}?"
  end
end