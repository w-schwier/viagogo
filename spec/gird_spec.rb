require 'grid'

describe Grid do
  subject(:grid) {described_class.new}

  it "makes a 2d array of co-ordinates" do
    grid.make_grid
    expect(grid.coordinates).to include [-10, -10]
    expect(grid.coordinates).to include [10, 10]
  end


end
