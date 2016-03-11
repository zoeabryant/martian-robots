class Grid
  attr_reader :xBoundary, :yBoundary

  def initialize()
    @xBoundary = 5
    @yBoundary = 3
  end

  def within_boundary?(coordinates)
    coordinates[0] >= 0 && coordinates[1] >= 0 && coordinates[0] < @xBoundary && coordinates[1] < @yBoundary
  end

end