require_relative '../lib/citizen'
require_relative '../lib/modules'

class Politician < Citizen
  include CommonMethods

  POL_PARTY = ["democrat", "republican"]
  POL_ATTRIBUTES = ["name", "party"]

  attr_accessor :party
  attr_reader :vote_for

  def initialize(name: name=nil, party: party=nil)
    super(name: name)
    @party = party
    @vote_for = self
  end

  def self.create
    party = ask_for_party
    name = Citizen.ask_for_name

    new(name: name, party: party)
  end

  def update
    option = ask_update_attribute

    return self.name = Citizen.ask_for_name if option == 'name'
    return self.party = ask_for_party if option == 'party'
  end

  private

  def self.ask_for_party
    validate(POL_PARTY, ask('What is your political party? Democrat or Republican?'))
  end

  def ask_update_attribute
    validate(POL_ATTRIBUTES, ask('What would you like to update? Name or party?'))
  end
end
