require './lib/grid'
require './lib/coordinate'
require './lib/robot'

# $ 5 3
# $ 1 1 E
# $ RFRFRFRF


def asks
  gets
end

def removeSpace(string)
  string.chomp.gsub(/\s+/, "")
end

def mapOrientation(orientation)
  orientation.capitalize!
  case orientation
    when "N"
      return :north
    when "E"
      return :east
    when "S"
      return :south
    when "W"
      return :west
    else
      puts "error"
  end

end

def interpretCommands(commands, robot, grid)
  commands = commands.split(//)
  commands.each do |command|
    case command
      when "L"
        robot.turnLeft
      when "R"
        robot.turnRight
      when "F"
        grid.moveRobotForward(robot)
      else
        puts "error"
    end
  end
end

def startProcess
  puts "enter size of grid"
  sizeOfGrid = removeSpace(asks)
  puts "#{sizeOfGrid[0]},#{sizeOfGrid[1]}"
  grid = Grid.new(sizeOfGrid[0],sizeOfGrid[1])

  puts ""
  puts "Place robot"
  robotPosition = removeSpace(asks)
  x = robotPosition[0].to_i
  y = robotPosition[1].to_i

  coordinates = Coordinate.new(x, y)

  puts ""
  puts "Robot orientation? NESW"
  robotOrientation = mapOrientation(removeSpace(asks))

  robot = Robot.new(robotOrientation, coordinates)

  puts ""

  puts "#{robot.position.x.class},#{robot.position.y.class}"
  puts robot.orientation

  puts ""

  puts "give it a list of commands eg RFRFRFRF"
  commands = asks
  interpretCommands(commands, robot, grid)

  puts ""

  puts robot
  puts robot.position
  puts robot.orientation

end

startProcess()