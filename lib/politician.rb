require 'citizen'

class Politician < Citizen
  POL_PARTY = ["democrat", "republican"]

  attr_accessor :party

  def initialize(name: name=nil, party: party=nil)
    super(name: name)
    @party = party
  end

  def validate(options, field)
    unless options.include? field
      field = ask("Sorry that is not an option. Please select one of the following: #{options.join(", ")}")
    end
    field
  end

  def ask(message)
    puts message
    gets.chomp.downcase
  end

  def get_party
    party = ask("What is your political party? Democrat or Republican?")
    validate(POL_PARTY, party)
  end
end
