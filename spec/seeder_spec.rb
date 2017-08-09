require 'seeder'

describe Seeder do
  subject(:seeder) {described_class.new}
  let(:event) {double :event}
  let(:ticket) {double :ticket}

  before do
    seeder.populate
  end

  it "gathers 10 event co-ordinates" do
    expect(seeder.ordinates.length).to eq 10
  end

  it 'checks new events are created with coordinates' do
    expect(seeder.events.length).to eq 10
    expect(seeder.events[0].x).not_to eq nil
    expect(seeder.events[9].x).not_to eq nil
  end

  it 'checks an event has some tickets' do
    expect(seeder.events[0].tickets).not_to eq []
  end

end
