require './lib/room'

class Apartment
    attr_reader :rented,
                :rooms

    def initialize
        rented = false
        rooms = []
    end

    def is_rented?
        rented
    end

    def rent
        rented = true
    end

    def add_room(room)
        rooms << room
    end

    def list_rooms_by_name_alphabetically
        temp_room_array = []
        alpha_room_array = []
        rooms.each do |room|
            temp_room_array << room.name
        end

        alpha_room_array = temp_room_array.sort{|a, b| a <=> b }

        return alpha_room_array
    end
end