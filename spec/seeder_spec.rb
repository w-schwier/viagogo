require 'seeder'

describe Seeder do
  subject(:seeder) {described_class.new}

  it "gathers 10 event co-ordinates" do
    seeder.populate_ordinates
    expect(seeder.ordinates.length).to eq 10
  end

  it 'checks all co-ordinates are unique' do
    seeder.populate_ordinates
    expect(seeder.ordinates).to eq []
  end

end
