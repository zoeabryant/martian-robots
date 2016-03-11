class Grid
  attr_reader :xBoundary, :yBoundary

  # [x,y]

  def initialize()
    @xBoundary = 5
    @yBoundary = 3
  end

  def within_boundary?(coordinates)
    coordinates.x >= 0 && coordinates.y >= 0 && coordinates.x < @xBoundary && coordinates.y < @yBoundary
  end

  def northOf(coordinates)
    Coordinate.new(coordinates.x, coordinates.y + 1)
  end

  def eastOf(coordinates)
    Coordinate.new(coordinates.x + 1, coordinates.y)
  end

  def southOf(coordinates)
    Coordinate.new(coordinates.x, coordinates.y - 1)
  end

  def westOf(coordinates)
    Coordinate.new(coordinates.x - 1, coordinates.y)
  end

  def moveRobotForward(robot)
    newPosition = case robot.orientation
      when :north
        northOf(robot.position)
      when :east
        eastOf(robot.position)
      when :south
        southOf(robot.position)
      when :west
        westOf(robot.position)
      else
        puts "error"
    end

    return :dead unless within_boundary?(newPosition)
    robot.updatePosition(newPosition)
    robot
  end

end