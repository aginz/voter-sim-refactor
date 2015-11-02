require 'citizen'
require 'modules'

class Person < Citizen
  include CommonMethods

  attr_accessor :politics

  POLITICS = ['tea party', 'conservative', 'neutral', 'liberal', 'socialist']

  def initialize(name: name=nil, politics: politics=nil)
    super(name: name)
    @politics = politics
  end

  def self.from_user_input
    @politics = ask_for_politics
    @name = ask_for_name
  end

  def self.ask_for_politics
    politics = ask('What is your political preference? Tea Party, Conservative, Neutral, Liberal, or Socialist?')
    validate(POLITICS, politics)
  end

  def self.ask_for_name
    super
  end
end
