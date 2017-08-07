require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new(price: 0)}
  subject(:t2) {described_class.new}


  it "checks ticket can have price set" do
    expect(ticket.price).to eq "%.2f" % 0
  end

  it "checks tickets can have random prices" do
    expect(t2.price).not_to eq 0
  end

end
