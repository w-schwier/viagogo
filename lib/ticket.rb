class Ticket
attr_reader :price

  def initialize(price: rand * (100-0.5) + 0.5)
    @price = "%.2f" % price
  end

end
