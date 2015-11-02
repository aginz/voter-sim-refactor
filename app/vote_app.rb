require './lib/modules.rb'
require './lib/citizen.rb'
require './lib/politician.rb'
include CommonMethods

pol1 = Politician.new.from_user_input
