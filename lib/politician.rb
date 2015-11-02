require 'citizen'
require 'modules'

class Politician < Citizen
  include CommonMethods

  POL_PARTY = ["democrat", "republican"]

  attr_accessor :party

  def initialize(name: name=nil, party: party=nil)
    super(name: name)
    @party = party
  end

  def self.from_user_input
    @party = ask_for_party
    @name = ask_for_name
  end

  def self.ask_for_party
    party = ask('What is your political party? Democrat or Republican?')
    validate(POL_PARTY, party)
  end

  def self.ask_for_name
    super
  end
end
