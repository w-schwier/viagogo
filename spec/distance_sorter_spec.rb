require 'distance_sorter'

describe DistanceSorter do
  subject(:sorter) {described_class.new}

  before do
  end

  it "sorts something" do
    expect(sorter.sort(tickets)).to eq 10
  end

end
