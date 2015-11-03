require 'rspec'
require 'politician'
require 'citizen'

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
    hillary = Politician.new(name: 'Hillary', party: 'democrat')
    result = hillary.vote_for
    expected_result = hillary.id

    expect(result).to eq(expected_result)
  end

  it '#create new politician with party and name' do
    allow(Politician).to receive(:ask_for_party).and return("democrat")
    pol1 = Politician.create

    expect(pol1).to_be_instance_of(Politician)
    expect(pol1.party).to eq('democrat')
    expect(pol1.name).to eq('Sam')
  end
end
