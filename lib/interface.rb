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
    get_all_event_distances
    # sort_distances
    print_results
  end

  def get_users_coordinates
    puts "Please enter your X coordinate: "
    @x = $stdin.gets.chomp.to_i
    puts "Please enter your Y coordinate: "
    @y = $stdin.gets.chomp.to_i
  end

  def get_all_event_distances
    events.each { |event| get_distance(event) }
    @distances = @distances.sort_by {|id, d | d}
  end

  def get_distance(event)
    d = Distance.new(x1: @x, y1: @y, x2: event.x, y2: event.y)
    @distances[event] = d.calculate
  end

  def print_results
    results = @distances[0,5]
    p "Closest events to (#{@x}, #{@y}): "
    results.each do |result|
      r = result[0]
      price = r.tickets.any? ? r.tickets.sort_by {|t| t.price}[0].price : "No tickets available"
      # require 'pry'; binding.pry
      p "Event: #{r.id} - #{price}, Distance: #{result[1]}"
    end
  end

  # def print_results
  #   @sorted_results.each do |result|
  # r.tickets.sort_by {|t| t.price}[0].price
  #   end
  # end

  def test_setup
    @x = 0; @y = 0
  end

end
