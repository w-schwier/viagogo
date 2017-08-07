class Seeder
  attr_reader :ordinates
  X_POTENTIAL = (-10..10).to_a
  Y_POTENTIAL = (-10..10).to_a

  def initialize
    @ordinates = []
  end

  def populate_ordinates
    10.times {@ordinates.push([X_POTENTIAL.sample, Y_POTENTIAL.sample])}
  end
end
