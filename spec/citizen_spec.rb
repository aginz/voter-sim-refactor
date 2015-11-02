require 'rspec'
require 'citizen'

RSpec.describe Citizen do
  before(:each) do
    @@serial = 1
    @@citizens = []
  end

  it 'has an id' do
    citizen1 = Citizen.new(name: 'Ashley')
    citizen2 = Citizen.new(name: 'Matt')

    expect(citizen1.id).to eq(1)
    expect(citizen2.id).to eq(2)
  end

  it 'has a name when created' do
    citizen = Citizen.new(name: 'Ashley')
    result = citizen.name

    expect(result).to eq ('Ashley')
  end

  it '#all lists all citizens' do
    citizen1 = Citizen.new(name: 'Ashley')
    citizen2 = Citizen.new(name: 'Matt')
    citizen3 = Citizen.new(name: 'Josh')

    result = Citizen.all

    expect(result.length).to eq (3)
    expect(result[0].name).to eq ('Ashley')
    expect(result[1].name).to eq ('Matt')
    expect(result[2].name).to eq ('Josh')
  end
end
