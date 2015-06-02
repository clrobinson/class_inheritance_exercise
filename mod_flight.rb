module Flight

  def take_off(int)
    @airspeed_velocity = int
    puts "The #{@string} takes off and flies at #{@airspeed_velocity}!"
  end

  def airspeed_velocity
    return @airspeed_velocity ||= 0
  end
  
  def fly_faster(int)
    if flying?
      @airspeed_velocity += int
      puts "The #{@string} flies faster! It is now flying at #{@airspeed_velocity}!"
    else
      puts_not_flying
    end
  end

  def fly_slower(int)
    if flying?
      @airspeed_velocity -= int
      puts "The #{@string} flies slower! "
      if flying?
        puts "It is now flying at #{@airspeed_velocity}!"
      else
        fall
      end
    else
      puts_not_flying
    end

  end

  def flying?
    @airspeed_velocity > 0
  end

private
    def fall
      @airspeed_velocity = 0
      puts "It falls out of the sky, as it's not flying fast enough to keep aloft!"
    end

    def puts_not_flying
      puts "The #{@string} isn't flying. Try taking off first."
    end
end