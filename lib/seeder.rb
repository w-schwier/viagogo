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
    self.grid.make_grid
    NO_OF_EVENTS.times { self.ordinates.push(self.grid.coordinates.shuffle.pop) }
  end

  def populate_events
    id = 1
    self.ordinates.each do |x, y|
      self.events.push(Event.new(id: id, x: x, y: y)); id += 1
    end
  end

  def add_tickets
    self.events.each do |event|
      Random.rand(NO_OF_TICKETS).times { event.tickets.push(Ticket.new) }
    end
  end
end
