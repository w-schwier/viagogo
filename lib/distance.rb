class Distance
  attr_reader :x1, :x2, :y1, :y2

  def initialize(x1: nil, y1: nil, x2: nil, y2: nil)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def calculate
    ((self.x1 - self.x2) + (self.y1 - self.y2)).abs
  end

end
