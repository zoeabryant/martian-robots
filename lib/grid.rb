class Grid
  attr_reader :xBoundary, :yBoundary

  def initialize()
    @xBoundary = 5
    @yBoundary = 3
  end

  def within_boundary?(coordinates)
    xCoordinate = coordinates[0]
    yCoordinate = coordinates[1]
    xCoordinate >= 0 && yCoordinate >= 0 && xCoordinate < @xBoundary && yCoordinate < @yBoundary
  end

end