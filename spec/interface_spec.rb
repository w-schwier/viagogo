require 'interface'

describe Interface do
  subject(:interface) {described_class.new}

  before do
  end

  it "has 10 event to start with" do
    interface.start
    expect(interface.events.length).to eq 10
  end

end
