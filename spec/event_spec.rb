require 'event'

describe Event do
  subject(:event) {described_class.new}

  it "checks event has starting attributes" do
    expect(event.id).to eq nil
    expect(event.x).to eq nil
    expect(event.y).to eq nil
    expect(event.tickets).to eq []
  end

end
