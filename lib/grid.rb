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
    @x.each { |x| @y.each { |y| @coordinates.push([x, y]) }}
  end

end
