require './lib/robot'

describe Robot do

  # right: clockwise
  # left: anti-clockwise

  it 'has an orientation north' do
    expect(Robot.new.orientation).to eq :north
  end

  context 'starting with orientation north' do
    let(:robot) { Robot.new }

    it 'has the orientation east when asked to turn right' do
      puts robot.orientation
      robot.turnRight
      expect(robot.orientation).to eq :east
    end

    it 'has the orientation west when asked to turn left' do
      puts robot.orientation
      robot.turnLeft
      expect(robot.orientation).to eq :west
    end

  end


end