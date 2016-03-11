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

end