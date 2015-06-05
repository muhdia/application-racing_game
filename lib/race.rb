class Race
  attr_reader :cars, :length

  def initialize cars=3, length=10
    @cars   = Array.new(cars) { Car.new }
    @length = length
    draw
  end

  def start
    length.times { next!; sleep 1.2 }
  end

  def finish
  end

  private

  def clear
    system 'clear' or system 'cls'
  end

  def draw
    clear
    cars.each do |car|
      car.position.times { print ' ' }
      print "<>\r\n"
    end
  end

  def next!
    cars.each do |car|
      car.update_position
    end
    draw
  end

end
