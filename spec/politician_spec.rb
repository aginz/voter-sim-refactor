require 'rspec'
require 'politician'
require 'citizen'

RSpec.describe Politician do
  it "has a name" do
    hilary = Politician.new(name: "Hilary", party: "democrat")
    result = hilary.name

    expect(result).to eq("Hilary")
  end

  it "has a political party" do
    democrat = Politician.new(party: "democrat")
    result = democrat.party

    expect(result).to eq("democrat")
  end
end
