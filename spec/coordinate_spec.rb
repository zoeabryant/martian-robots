require './lib/coordinate'

describe Coordinate do

  it 'has an x value' do
    expect(Coordinate.new.x).to eq 0
  end

  it 'has an y value' do
    expect(Coordinate.new.y).to eq 0
  end

  it 'can be initialized with an x and a y value' do
    coordinate = Coordinate.new(1, 2)
    expect(coordinate.x).to eq 1
    expect(coordinate.y).to eq 2
  end

end