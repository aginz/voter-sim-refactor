require_relative '../lib/modules'
require_relative '../lib/citizen'
require_relative '../lib/politician'
include CommonMethods

hilary = Politician.create
p hilary
hilary.update
p hilary
