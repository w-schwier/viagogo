class Grid
  attr_reader :x, :y, :coordinates
  def initialize
    @x = (-10..10).to_a
    @y = (-10..10).to_a
    @coordinates =[]
  end

  def make_grid
    @x.each { |x| @y.each { |y| @coordinates.push([x, y]) }}
  end

end
