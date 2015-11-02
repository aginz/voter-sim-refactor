class Citizen
  attr_accessor :name
  attr_reader :id

  @@serial = 1

  def initialize(name: name=nil)
    @name = name
    @id = @@serial
    @@serial += 1
  end

  def ask_for_name
    ask("What is your name?")
  end
end
