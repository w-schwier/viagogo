class Interface
  attr_reader :seeder, :events, :x, :y, :distances

  def initialize(seeder: Seeder.new)
    @seeder = seeder
    @events = []
    @x = nil
    @y = nil
    @distances = Hash.new( "distance" )
  end

  def start
    @seeder.populate
    @seeder.events.each { |event| @events.push(event) }
  end

  def run
    get_users_coordinates
    get_all_events_distances
    sort_distances
    print_results
  end

  def get_users_coordinates
    puts "Please enter your X coordinate: "
    @x = $stdin.gets.chomp.to_i
    puts "Please enter your Y coordinate: "
    @y = $stdin.gets.chomp.to_i
  end

  def get_all_events_distances
    events.each do |event|
      get_distance(event)
    end
  end

  def get_distance(event)
    d = Distance.new(x1: @x, y1: @y, x2: event.x, y2: event.y)
    @distances[event.id] = d.calculate
  end

  def sort_distances

  end

  def print_results

  end

  def test_setup
    @x = 0; @y = 0
  end

end
