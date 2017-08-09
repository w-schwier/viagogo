class Interface
  attr_reader :seeder, :events

  def initialize(seeder: Seeder.new)
    @seeder = seeder
    @events = []
  end

  def start
    @seeder.populate
    @seeder.events.each { |event| @events.push(event) }
  end
end
