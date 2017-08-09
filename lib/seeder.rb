class Seeder
  attr_reader :grid, :ordinates, :events

  def initialize(grid: Grid.new)
    @grid = grid
    @ordinates = []
    @events = []
  end

  def populate_ordinates
    @grid.make_grid
    10.times { @ordinates.push(@grid.coordinates.shuffle.pop) }
  end
end
