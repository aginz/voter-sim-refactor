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
end
