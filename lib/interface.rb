class Interface
  attr_reader :seeder, :events, :x, :y, :sorted_events
  LISTED_VENUES = 5

  def initialize(seeder: Seeder.new)
    @seeder = seeder
    @events = []
  end

  def seed
    self.seeder.populate
    self.seeder.events.each { |event| self.events.push(event) }
  end

  def run
    get_users_coordinates
    calculate_distances
    print_results
  end

  def get_users_coordinates
    puts "Please enter your X coordinate: "; @x = $stdin.gets.chomp.to_i
    puts "Please enter your Y coordinate: "; @y = $stdin.gets.chomp.to_i
  end

  def calculate_distances
    @sorted_events = DistanceSorter.calculate_all(self.x, self.y, self.events)
  end

  def print_results
    p "Closest events to (#{self.x}, #{self.y}): "
    self.sorted_events[0,LISTED_VENUES].each { |result| list_event(result)}
  end

  def list_event(result)
    r = result[0]
    price = r.tickets.any? ? "£#{r.tickets.sort_by {|t| t.price}[0].price}" : "No tickets available"
    p "Event: #{r.id} - #{price}, Distance: #{result[1]}"
  end

  def test_setup
    @x = 0; @y = 0
  end

end
