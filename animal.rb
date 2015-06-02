class Animal
  attr_reader   :alive
  attr_reader   :num_legs
  attr_reader   :num_wings
  attr_reader   :covered_in
  attr_reader   :eats

  def initialize(string = "animal", num_legs, num_wings, covered_in, eats)
    @string = string
    @alive = true
    @num_legs = num_legs
    @num_wings = num_wings
    @covered_in = covered_in
    @eats = eats
    prepare_god_heal
  end

  def remove_leg
    if @num_legs > 0
      @num_legs -= 1
      puts "One leg removed from the #{@string}. You monster!"
    else
      puts "The #{@string} doesn't have any legs."
    end
  end

  def remove_wing
    if @num_wings > 0
      @num_wings -= 1
      puts "One wing removed from the #{@string}. You monster!"
    else
      puts "The #{@string} doesn't have any wings."
    end
  end

  def god_heal
    if god_heal_necessary?
      puts "IT'S A MIRACLE!"
      god_heal_wings unless wings_ok?
      god_heal_legs unless legs_ok?
      god_heal_covered_in unless covered_in_ok?
    else
      puts "The #{@string} is fine. No miracle necessary."
    end
  end

  def wings_ok?
    @original_num_wings == @num_wings
  end

  def legs_ok?
    @original_num_legs == @num_legs
  end

  def covered_in_ok?
    @original_covered_in == @covered_in
  end

private
    def prepare_god_heal
      @original_num_wings = @num_wings
      @original_num_legs = @num_legs
      @original_covered_in = @covered_in.dup
    end

    def god_heal_necessary?
      return true if @original_num_wings != @num_wings
      return true if @original_num_legs != @num_legs
      return true if @original_covered_in != @covered_in
      return false
    end

    def god_heal_wings
      @num_wings = @original_num_wings
      puts "The #{@string} once again has #{@num_wings} wings!"
    end

    def god_heal_legs
      @num_legs = @original_num_legs
      puts "The #{@string} once again has #{@num_legs} legs!"
    end

    def god_heal_covered_in
      @covered_in = @original_covered_in.dup
      puts "The #{@string} is once again covered in #{@covered_in}!"
    end
end



