require_relative '../lib/citizen'
require_relative '../lib/modules'

class Person < Citizen
  include CommonMethods

  attr_accessor :politics

  POLITICS = ['tea party', 'conservative', 'neutral', 'liberal', 'socialist']

  def initialize(name: name=nil, politics: politics=nil)
    super(name: name)
    @politics = politics
  end

  def self.create
    politics = ask_for_politics
    name = Citizen.ask_for_name

    new(name: name, politics: politics)
  end

  def self.ask_for_politics
    politics = ask('What is your political preference? Tea Party, Conservative, Neutral, Liberal, or Socialist?')
    validate(POLITICS, politics)
  end
end
