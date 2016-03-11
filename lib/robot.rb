class Robot
  attr_reader :orientation

  def initialize(orientation)
    @orientation = orientation
  end

  def turnRight
    case @orientation
      when :north
        @orientation = :east
      when :east
        @orientation = :south
      when :south
        @orientation = :west
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
      else
        puts "orientation not recognised"
    end
  end

end