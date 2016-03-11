require './lib/grid'
require './lib/coordinate'
require './lib/robot'

describe Grid do

  # [x,y]

  let(:grid) {Grid.new}

  it 'has an x boundary' do
    expect(grid.xBoundary).to eq 5
  end

  it 'has an y boundary' do
    expect(grid.yBoundary).to eq 3
  end

  context 'with a boundary of 5, 3' do
    it 'considers [0,0] to be within boundary' do
      expect(grid.within_boundary?(Coordinate.new(0,0))).to eq true
    end

    it 'considers [2,2] to be within boundary' do
      expect(grid.within_boundary?(Coordinate.new(2,2))).to eq true
    end

    it 'considers [6,0] to be out of boundary' do
      expect(grid.within_boundary?(Coordinate.new(6,0))).to eq false
    end

    it 'considers [0,4] to be out of boundary' do
      expect(grid.within_boundary?(Coordinate.new(0,4))).to eq false
    end

    it 'considers [-1,-1] to be out of boundary' do
      expect(grid.within_boundary?(Coordinate.new(-1,-1))).to eq false
    end

    context 'moving forward a robot placed in 1,1' do

      let(:coordinate) {Coordinate.new(1,1)}

      it 'moves to 1,2 if robot is facing north' do
        robot = Robot.new(:north, coordinate)
        grid.moveRobotForward(robot);
        expect(robot.position.x).to be 1
        expect(robot.position.y).to be 2
      end

      it 'moves to 2,1 if robot is facing east' do
        robot = Robot.new(:east, coordinate)
        grid.moveRobotForward(robot);
        expect(robot.position.x).to be 2
        expect(robot.position.y).to be 1
      end

      it 'moves to 1,0 if robot is facing south' do
        robot = Robot.new(:south, coordinate)
        grid.moveRobotForward(robot);
        expect(robot.position.x).to be 1
        expect(robot.position.y).to be 0
      end

      it 'moves to 0,1 if robot is facing west' do
        robot = Robot.new(:west, coordinate)
        grid.moveRobotForward(robot);
        expect(robot.position.x).to be 0
        expect(robot.position.y).to be 1
      end

    end

    context 'moving forward a robot placed in 0,0' do

      let(:coordinate) {Coordinate.new(0,0)}

      it 'moves to 0,1 if robot is facing north' do
        robot = Robot.new(:north, coordinate)
        results = grid.moveRobotForward(robot);
        expect(results.position.x).to be 0
        expect(results.position.y).to be 1
      end

      it 'moves to 1,0 if robot is facing east' do
        robot = Robot.new(:east, coordinate)
        results = grid.moveRobotForward(robot);
        expect(results.position.x).to be 1
        expect(results.position.y).to be 0
      end

      it 'DIES if robot is facing south (off grid at 0,-1)' do
        robot = Robot.new(:south, coordinate)
        results = grid.moveRobotForward(robot);
        expect(results).to be :dead
      end

      it 'DIES if robot is facing west (off grid at -1,0)' do
        robot = Robot.new(:west, coordinate)
        results = grid.moveRobotForward(robot);
        expect(results).to be :dead
      end

    end

  end

  context 'with the coordinate 1,1' do

    let(:given_coordinates){Coordinate.new(1,1)}

    it 'knows northOf 1,1 is 1,2' do
      north = grid.northOf(given_coordinates)
      expect(north.x).to eq 1
      expect(north.y).to eq 2
    end

    it 'knows eastOf 1,1 is 2,1' do
      east = grid.eastOf(given_coordinates)
      expect(east.x).to eq 2
      expect(east.y).to eq 1
    end

    it 'knows southOf 1,1 is 1,0' do
      south = grid.southOf(given_coordinates)
      expect(south.x).to eq 1
      expect(south.y).to eq 0
    end

    it 'knows westOf 1,1 is 0,1' do
      west = grid.westOf(given_coordinates)
      expect(west.x).to eq 0
      expect(west.y).to eq 1
    end

  end

  context 'with the coordinate 0,0' do

    let(:given_coordinates){Coordinate.new(0,0)}

    it 'knows northOf 0,0 is 0,1' do
      north = grid.northOf(given_coordinates)
      expect(north.x).to eq 0
      expect(north.y).to eq 1
    end

    it 'knows eastOf 0,0 is 1,0' do
      east = grid.eastOf(given_coordinates)
      expect(east.x).to eq 1
      expect(east.y).to eq 0
    end

    it 'knows southOf 0,0 is 0,-1' do
      south = grid.southOf(given_coordinates)
      expect(south.x).to eq 0
      expect(south.y).to eq -1
    end

    it 'knows westOf 0,0 is -1,0' do
      west = grid.westOf(given_coordinates)
      expect(west.x).to eq -1
      expect(west.y).to eq 0
    end

  end

end