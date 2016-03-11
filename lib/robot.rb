class Robot
  attr_reader :orientation

  def initialize
    @orientation = :north
  end

  def turnRight
    @orientation = :east
  end

  def turnLeft
    @orientation = :west
  end

end