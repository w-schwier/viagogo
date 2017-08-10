class Grid
  attr_reader :x, :y, :coordinates
  X = 10
  Y = 10

  def initialize
    @x = (-X..X).to_a
    @y = (-Y..Y).to_a
    @coordinates =[]
  end

  def make_grid
    self.x.each { |x| self.y.each { |y| self.coordinates.push([x, y]) }}
  end

end
