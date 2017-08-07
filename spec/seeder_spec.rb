require 'seeder'

describe Seeder do
  subject(:seeder) {described_class.new}

  it "gathers 10 uniquie event co-ordinates" do
    seeder.populate_ordinates
    expect(seeder.ordinates.length).to eq 10
  end

end
