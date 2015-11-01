require 'rspec'
require 'citizen'

RSpec.describe Citizen do
  it "has a name when created" do
    citizen = Citizen.new("Ashley")
    result = citizen.name

    expect(result).to eq ("Ashley")
  end
end
