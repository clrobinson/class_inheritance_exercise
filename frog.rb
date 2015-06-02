class Frog < Amphibian
  def initialize
    string = "frog"
    num_legs = 4
    eats = ["bug"]
    super(string, num_legs, eats)
  end
end