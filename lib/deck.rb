require './lib/card'
require './lib/turn'

class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
        @count = count
    end

    def count
        @count = @cards.length
    end

    def cards_in_category(category)
        @cards.select { |card| card.category == category }
    end
end