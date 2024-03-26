require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Round do
    it 'exists and has a deck and turns' do

        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
     
        cards = [card_1, card_2, card_3]
    
        turn = Turn.new("Juneau", cards)
        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round).to be_instance_of(Round)
        expect(round.deck).to eq(deck)
        expect(round.turns).to eq([])

    end

    it 'starts a Round with current_card == 1st element in cards array (card_1)' do
    
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    
        cards = [card_1, card_2, card_3]

        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round.current_card).to eq(card_1)
    end
        
    it 'has a turn' do

        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

        cards = [card_1, card_2, card_3]
        
        deck = Deck.new(cards)
        round = Round.new(deck)
        
    end


    it 'has a deck' do
    
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)
    round = Round.new(deck)
    
    expect(round.deck).to eq(deck)
        # round.deck
            # Is calling the deck method (via attr_reader) onto the variable `round`
            # which holds the round object.
            # `round` is initialized with the deck attribute
            # deck holds the value of the object `deck`
    end
end