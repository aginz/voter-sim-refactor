class Citizen
  attr_reader :name

  def initialize(name: name=nil)
    @name = name
  end
end
