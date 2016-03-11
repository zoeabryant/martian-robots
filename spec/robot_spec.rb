require './lib/robot'
require './lib/coordinate'

describe Robot do

  # right: clockwise
  # left: anti-clockwise

  let(:coordinate){Coordinate.new}

  it 'has a coordinate position' do
    robot = Robot.new(:north, coordinate)
    expect(robot.position.x).to be 0
    expect(robot.position.y).to be 0
  end

  it 'can update the coordinate position' do
    robot = Robot.new(:north, coordinate)
    robot.updatePosition(Coordinate.new(1,1))
    expect(robot.position.x).to be 1
    expect(robot.position.y).to be 1
  end


  context 'starting with orientation north' do
    let(:robot) { Robot.new(:north, coordinate) }

    it 'has an orientation north' do
      expect(robot.orientation).to eq :north
    end

    it 'has the orientation east when asked to turn right' do
      robot.turnRight
      expect(robot.orientation).to eq :east
    end

    it 'has the orientation west when asked to turn left' do
      robot.turnLeft
      expect(robot.orientation).to eq :west
    end

  end

  context 'starting with orientation east' do
    let(:robot) { Robot.new(:east, coordinate) }

    it 'has an orientation east' do
      expect(robot.orientation).to eq :east
    end

    it 'has the orientation south when asked to turn right' do
      robot.turnRight
      expect(robot.orientation).to eq :south
    end

    it 'has the orientation north when asked to turn left' do
      robot.turnLeft
      expect(robot.orientation).to eq :north
    end

  end

  context 'starting with orientation south' do
    let(:robot) { Robot.new(:south, coordinate) }

    it 'has an orientation south' do
      expect(robot.orientation).to eq :south
    end

    it 'has the orientation west when asked to turn right' do
      robot.turnRight
      expect(robot.orientation).to eq :west
    end

    it 'has the orientation east when asked to turn left' do
      robot.turnLeft
      expect(robot.orientation).to eq :east
    end

  end

  context 'starting with orientation west' do
    let(:robot) { Robot.new(:west, coordinate) }

    it 'has an orientation west' do
      expect(robot.orientation).to eq :west
    end

    it 'has the orientation north when asked to turn right' do
      robot.turnRight
      expect(robot.orientation).to eq :north
    end

    it 'has the orientation south when asked to turn left' do
      robot.turnLeft
      expect(robot.orientation).to eq :south
    end

  end


end