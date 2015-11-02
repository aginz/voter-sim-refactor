require 'rspec'
require 'person'
require 'citizen'

RSpec.describe Person do
  it 'has a name' do
    ashley = Person.new(name: 'Ashley')
    result = ashley.name

    expect(result).to eq('Ashley')
  end

  it 'has a political preference' do
    ashley = Person.new(politics: 'neutral')
    result = ashley.politics

    expect(result).to eq('neutral')
  end
end
