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

  def populate_events
    id = 1
    @ordinates.each do |x, y|
      event = Event.new(id: id, x: x, y: y)
      @events.push(event)
      id += 1
    end
  end


end
