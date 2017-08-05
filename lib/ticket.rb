class Ticket

attr_reader :price
  def initialize(price: 0)
    @price = price
  end

  # rand * (max-min) + min

end
