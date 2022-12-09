require 'rspec'
require './lib/room'

RSpec.describe Room do
    it "has a name" do
        expect(bathroom = Room.new("bathroom")).to be_a(Room)
        expect(bathroom.name).to eq('bathroom')
    end
end