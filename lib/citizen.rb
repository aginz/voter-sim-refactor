class Citizen
  attr_accessor :name
  attr_reader :id, :citizens

  @@serial = 1
  @@citizens = []

  def initialize(name: name=nil)
    @name = name
    @id = @@serial
    @@serial += 1
    @@citizens << self
  end

  def self.all
    @@citizens
  end

  def self.find(id)
    index = id - 1
    @@citizens[index]
  end

  def self.ask_for_name
    ask("What is your name?")
  end
end
