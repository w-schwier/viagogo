class DistanceLog

  def self.calculate_all(x, y, events)
    distance_log = Hash.new( "distance" )
    events.each do |event|
      d = Distance.new(x1: x, y1: y, x2: event.x, y2: event.y)
      distance_log[event] = d.calculate
    end
    distance_log.sort_by {|id, d | d}
  end

end
