require 'ticket'

describe Ticket do
  subject(:ticket) {described_class.new}

  it "checks ticket has zero price to start" do
    expect(ticket.price).to eq 0
  end

end
