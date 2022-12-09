class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        # if count > 0
        #     return false
        # else
        #     return true
        # end
        candies.empty?
    end

    def count
        candies.length
    end

    def add_candy(candy)
        candies << candy
    end

    def contains?(type)
        candies.any? do |candy_in_bag|
            require 'pry'; binding.pry
            type == candy_in_bag.type
        end

        # @candies.each do |candy_in_bag|
        #     if candy_in_bag.type == type
        #         return true
        #     else
        #         return false
        #     end
        # end
    end
end