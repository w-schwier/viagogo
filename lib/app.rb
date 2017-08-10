require_relative "grid.rb"
require_relative "ticket.rb"
require_relative "event.rb"
require_relative "seeder.rb"
require_relative "distance"
require_relative "distance_log"
require_relative "interface"

app = Interface.new
app.start
app.run
