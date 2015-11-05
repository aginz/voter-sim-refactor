require 'rspec'
require 'politician'
require 'citizen'

module CommonMethods
  def ask(message)
    name = 'Sam'
    party = 'democrat'
  end
end

RSpec.describe Politician do
  it 'has a name' do
    hillary = Politician.new(name: 'Hillary')
    result = hillary.name

    expect(result).to eq('Hillary')
  end

  it 'has a political party' do
    hillary = Politician.new(party: 'democrat')
    result = hillary.party

    expect(result).to eq('democrat')
  end

  it 'votes for self' do
    hilary = Politician.new(name: 'Hilary', party: 'democrat')
    result = hilary.vote_for

    expect(result.name).to eq('Hilary')
    expect(result.party).to eq('democrat')
  end

  it '#create new politician with party and name' do
    allow(Politician).to receive(:ask_for_party).and_return('democrat')
    allow(Citizen).to receive(:ask_for_name).and_return('Sam')
    pol = Politician.create

    expect(pol.name).to eq('Sam')
    expect(pol.party).to eq('democrat')
  end

  # it '#update name and party' do
    # pol1 = Politician.new(name: 'Kirk', party: 'republican')
    # pol1.update

    # expect(pol1.name).to eq('Hilary')
    # expect(pol1.party).to eq('republican')
  # end
end
