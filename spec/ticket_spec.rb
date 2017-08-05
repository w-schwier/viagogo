require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}
  subject(:t2) {described_class.new(price: rand * (100-0.1) + 0.1)}


  it "checks ticket has zero price to start" do
    expect(ticket.price).to eq 0
  end

  it "checks tickets can have random prices" do
    expect(t2.price).not_to eq 0
  end

end
