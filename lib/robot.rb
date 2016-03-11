class Robot
  attr_reader :orientation, :position

  def initialize(orientation, position)
    @orientation = orientation
    @position = position
  end

  def updatePosition(coordinate)
    @position = coordinate
  end

  def turnRight
    case @orientation
      when :north
        @orientation = :east
      when :east
        @orientation = :south
      when :south
        @orientation = :west
      when :west
        @orientation = :north
      else
        puts "orientation not recognised"
    end
  end

  def turnLeft
    case @orientation
      when :north
        @orientation = :west
      when :east
        @orientation = :north
      when :south
        @orientation = :east
      when :west
        @orientation = :south
      else
        puts "orientation not recognised"
    end
  end

end