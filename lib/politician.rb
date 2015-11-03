require_relative './citizen'
require_relative './modules'

class Politician < Citizen
  include CommonMethods

  POL_PARTY = ["democrat", "republican"]
  POL_ATTRIBUTES = ["name", "party"]

  attr_accessor :party
  attr_reader :vote_for

  def initialize(name: name=nil, party: party=nil)
    super(name: name)
    @party = party
    @vote_for = self.id
  end

  def self.create
    party ||= ask_for_party
    name ||= Citizen.ask_for_name

    new(name: name, party: party)
  end

  def update
    option ||= ask('What would you like to update? Name or party?')
    option = validate(POL_ATTRIBUTES, option)

    return self.name = Citizen.ask_for_name if option == 'name'
    return self.party = ask_for_party if option == 'party'
  end

  private

  def self.ask_for_party
    party = ask('What is your political party? Democrat or Republican?')
    validate(POL_PARTY, party)
  end
end
