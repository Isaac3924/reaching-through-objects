require 'rspec'
require './lib/room'
require './lib/apartment'

RSpec.describe Room do
    it "can tell if it's rented" do
        expect(apartment = Apartment.new).to be_a(Apartment)
        expect(apartment.rented).to eq(false)
        expect(apartment.is_rented?).to eq(false)

        apartment.rent

        expect(apartment.is_rented?).to eq(true)
    end

    it "can list its rooms alphabetically" do
        expect(apartment = Apartment.new).to be_a(Apartment)

        bathroom = Room.new("bathroom")
        apartment.add_room(bathroom)
        apartment.add_room(Room.new("laundry"))
        apartment.add_room(Room.new("kitchen"))
        apartment.add_room(Room.new("bedroom"))

        expect(apartment.rooms).to be_a(Array)

        expect(apartment.rooms[0]).to be_a(Room)
        expect(apartment.rooms[1]).to be_a(Room)
        expect(apartment.rooms[2]).to be_a(Room)
        expect(apartment.rooms[3]).to be_a(Room)

        expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
    end
end