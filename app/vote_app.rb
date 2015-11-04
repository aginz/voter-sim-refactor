require_relative '../lib/modules'
require_relative '../lib/citizen'
require_relative '../lib/politician'
include CommonMethods

hillary = Politician.create
hillary.update
p hillary
