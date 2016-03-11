require './lib/grid'
require './lib/coordinate'
require './lib/robot'

# $ 5 3
# $ 1 1 E
# $ RFRFRFRF

@grid = Grid.new()
initialCoords = Coordinate.new(0,0)
robot = Robot.new(:east, initialCoords)

def robotPosition(robot)
  puts ""
  puts "LOGGING ROBOT POSITION DATA"
  puts "robot.position #{robot.position.x},#{robot.position.y}"
  north = @grid.northOf(robot.position)
  puts "north #{north.x},#{north.y} within_boundary? #{@grid.within_boundary?(north)}"
  east = @grid.eastOf(robot.position)
  puts "east  #{east.x},#{east.y} within_boundary? #{@grid.within_boundary?(east)}"
  south = @grid.southOf(robot.position)
  puts "south #{south.x},#{south.y} within_boundary? #{@grid.within_boundary?(south)}"
  west = @grid.westOf(robot.position)
  puts "west  #{west.x},#{west.y} within_boundary? #{@grid.within_boundary?(west)}"
end

robotPosition(robot)
robot.updatePosition(Coordinate.new(1,0))
robotPosition(robot)