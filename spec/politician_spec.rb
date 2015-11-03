require 'rspec'
require 'politician'
require 'citizen'

RSpec.describe Politician do
  it 'has a name' do
    hilary = Politician.new(name: 'Hilary')
    result = hilary.name

    expect(result).to eq('Hilary')
  end

  it 'has a political party' do
    hilary = Politician.new(party: 'democrat')
    result = hilary.party

    expect(result).to eq('democrat')
  end

  it 'votes for self' do
    hilary = Politician.new(name: 'Hilary', party: 'democrat')
    result = hilary.vote_for
    expected_result = hilary.id

    expect(result).to eq(expected_result)
  end

  it '#create new politician with party and name' do
    party = 'democrat'
    name = 'Sam'
    pol1 = Politician.create

    expect(pol1).to_be_instance_of(Politician)
    expect(pol1.party).to eq('democrat')
    expect(pol1.name).to eq('Sam')
  end
end
