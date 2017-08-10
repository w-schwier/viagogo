class Interface
  attr_reader :seeder, :events, :x, :y, :sorted_events

  def initialize(seeder: Seeder.new)
    @seeder = seeder
    @events = []
  end

  def start
    @seeder.populate
    @seeder.events.each { |event| @events.push(event) }
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
    @sorted_events = DistanceLog.calculate_all(@x, @y, @events)
  end

  def print_results
    p "Closest events to (#{@x}, #{@y}): "
    list_events(@sorted_events[0,5])
  end

  def list_events(results)
    results.each do |result|
      r = result[0]
      price = r.tickets.any? ? "£#{r.tickets.sort_by {|t| t.price}[0].price}" : "No tickets available"
      p "Event: #{r.id} - #{price}, Distance: #{result[1]}"
    end
  end

  def test_setup
    @x = 0; @y = 0
  end

end
