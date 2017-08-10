class DistanceSorter

  def self.calculate_all(x, y, events)
    @distance_log = Hash.new( "distance" )
    events.each { |event| self.add_event(x, y, event) }
    @distance_log.sort_by {|event, distance | distance }
  end

  def self.add_event(x, y, event)
    d = Distance.new(x1: x, y1: y, x2: event.x, y2: event.y)
    @distance_log[event] = d.calculate
  end
end
