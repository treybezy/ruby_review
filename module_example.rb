module Fusion
def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end



end



class Car
  include Fusion

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Fusion

  def ring_bell
    puts "Ring ring!"
  end
end




bike = Bike.new
bike.ring_bell
p bike
bike.turn("south")
p bike

