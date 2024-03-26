# Round processes and records guesses
    # Round is initialized with a Deck
# When a Round is started, the current card is the first in the deck (cards array)
# When making a guess, it is recorded, then the next card becomes the current card

# The take_turn method accepts a string representing the guess.
# take_turn creates a new Turn object with the appropriate guess and Card.
# take_turn stores the new Turn and return in from the take_turn method.
# After take_turn is called the Round should move onto the next card in the deck.

# How do I record a guess? Maybe by putting it into a new array??

# Round begins with 1st element of cards array == current_card (card_1)
    # A guess is made.
        # That guess is recorded.
            # Next element in cards array becomes current_card (card_2)

            

require './lib/card'
require './lib/turn'
require './lib/deck'
require 'pry'

class Round
    attr_reader :deck,
                :turns,
                :current_card

    def initialize(deck)
        @deck = deck
        @turns = []
        @current_card = deck.cards[turns.count]
        binding.pry
                       # deck.cards[0] = card_1
                        # Because card_1 is the element in the cards array at the 
                            # 0th index position
    end

end

                            # attr_reader :current_card,
                            # :take_turn,
                            # :class,
                            # :number_correct,
                            # :percent_correct
        # Round
            # - deck
            # - turns
                # - current_card 
                # - take_turn
                # - class
            # - correct?
                # - number_correct
            # - feedback
            # - number_correct_by_category
                # - percent_correct