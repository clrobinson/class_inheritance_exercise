class Mammal < Animal
  def initialize(string, num_legs, num_wings, eats)
    covered_in = "fur"
    super(string, num_legs, num_wings, covered_in, eats)
  end

  def shave
    @covered_in = nil
    puts "You shaved a #{@string}. How could you do that to the poor #{@string}?"
  end
end