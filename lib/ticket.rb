class Ticket
  attr_reader :price
  MAX_PRICE = 100

  def initialize(price: rand * (MAX_PRICE-0.5) + 0.5)
    @price = "%.2f" % price
  end

end
