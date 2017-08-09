require 'interface'

describe Interface do
  subject(:interface) {described_class.new}

  before do
  end

  it "has 10 event to start with" do
    interface.start
    expect(interface.events.length).to eq 10
  end

  it "gets distances" do
    interface.start
    interface.test_setup
    interface.get_closest_events
    expect(interface.distances).to eq 10
  end

end
