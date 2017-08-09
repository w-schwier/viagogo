require 'seeder'

describe Seeder do
  subject(:seeder) {described_class.new}
  let(:event) {double :event}

  it "gathers 10 event co-ordinates" do
    seeder.populate_ordinates
    expect(seeder.ordinates.length).to eq 10
  end

  it 'check new events are created' do
    seeder.populate_ordinates
    seeder.populate_events
    expect(seeder.events.length).to eq 10
    expect(seeder.events[0].x).not_to eq nil
    expect(seeder.events[9].x).not_to eq nil
  end

end
