class Car
  attr_accessor :position, :speed

  def initialize
    @position = 0
    @speed = 0
  end

  def update_position
    get_speed
    self.position += self.speed
  end

  def get_speed
    self.speed = 1 + Random.rand(3)
  end

end
