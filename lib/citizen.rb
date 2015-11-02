class Citizen
  attr_accessor :name

  def initialize(name: name=nil)
    @name = name
  end

  def ask_for_name
    ask("What is your name?")
  end
end
