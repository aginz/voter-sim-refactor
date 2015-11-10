require 'rspec'
require 'politician'
require 'citizen'
require 'modules'

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

  it '#update name' do
    pol1 = Politician.new(name: 'Sam', party: 'republican')
    allow(pol1).to receive(:ask_update_attribute).and_return('name')
    allow(Citizen).to receive(:ask_for_name).and_return('Dave')
    pol1.update

    expect(pol1.name).to eq('Dave')
  end
end
