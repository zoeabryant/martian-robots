require './lib/grid'

describe Grid do

  it 'has an x boundary' do
    expect(Grid.new.xBoundary).to eq 5
  end

  it 'has an y boundary' do
    expect(Grid.new.yBoundary).to eq 3
  end

  context 'with a boundary of 5, 3' do
    it 'considers [0,0] to be within boundary' do
      expect(Grid.new.within_boundary?([0,0])).to eq true
    end

    it 'considers [2,2] to be within boundary' do
      expect(Grid.new.within_boundary?([2,2])).to eq true
    end

    it 'considers [6,0] to be out of boundary' do
      expect(Grid.new.within_boundary?([6,0])).to eq false
    end

    it 'considers [0,4] to be out of boundary' do
      expect(Grid.new.within_boundary?([0,4])).to eq false
    end

    it 'considers [-1,-1] to be out of boundary' do
      expect(Grid.new.within_boundary?([-1,-1])).to eq false
    end

  end

end