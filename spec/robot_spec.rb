require './lib/robot'

describe Robot do

  # right: clockwise
  # left: anti-clockwise


  context 'starting with orientation north' do
    let(:robot) { Robot.new(:north) }

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
    let(:robot) { Robot.new(:east) }

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


end