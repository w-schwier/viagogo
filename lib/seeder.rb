class Seeder
  attr_reader :grid, :ordinates, :events
  NO_OF_EVENTS = 10
  NO_OF_TICKETS = 10

  def initialize(grid: Grid.new)
    @grid = grid
    @ordinates = []
    @events = []
  end

  def populate
    populate_ordinates
    populate_events
    add_tickets
  end

  def populate_ordinates
    @grid.make_grid
    NO_OF_EVENTS.times { @ordinates.push(@grid.coordinates.shuffle.pop) }
  end

  def populate_events
    id = 1
    @ordinates.each do |x, y|
      @events.push(Event.new(id: id, x: x, y: y)); id += 1
    end
  end

  def add_tickets
    @events.each do |event|
      Random.rand(NO_OF_TICKETS).times { event.tickets.push(Ticket.new) }
    end
  end
end
