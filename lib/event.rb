class Event
  attr_reader :id, :x, :y, :tickets

  def initialize(id: nil, x: nil, y: nil)
    @id = id
    @x = x
    @y = y
    @tickets = []
  end
end
