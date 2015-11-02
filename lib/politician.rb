require_relative './citizen'
require_relative './modules'

class Politician < Citizen
  include CommonMethods

  POL_PARTY = ["democrat", "republican"]
  POL_ATTRIBUTES = ["name", "party"]

  attr_accessor :party

  def initialize(name: name=nil, party: party=nil)
    super(name: name)
    @party = party
  end

  def self.create
    party = ask_for_party
    name = Citizen.ask_for_name

    new(name: name, party:party)
  end

  def self.update
    option = ask('What would you like to update? Name or party?')
    option = validate(POL_ATTRIBUTES, option)

    return self.name = ask_for_name if option == 'name'
    return self.party = ask_for_name if option == 'party'
  end

  def self.ask_for_party
    party = ask('What is your political party? Democrat or Republican?')
    validate(POL_PARTY, party)
  end
end
