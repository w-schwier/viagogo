require 'distance'

describe Distance do
  subject(:distance) {described_class.new}
  subject(:d2) {described_class.new(x1: 0, y1: 0, x2: 3, y2: 3)}
  subject(:d3) {described_class.new(x1: 3, y1: 3, x2: 0, y2: 0)}

  it "starts with nil values for all coordinates" do
    expect(distance.x1).to eq nil
  end

  it "calculates correct distance" do
    expect(d2.calculate).to eq 6
  end

  it "calculates correct distance" do
    expect(d3.calculate).to eq 6
  end

end
