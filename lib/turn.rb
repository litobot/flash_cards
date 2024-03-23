require './lib/card'

class Turn
    attr_reader :card,
                :guess

        def initialize(guess, card)
            @guess = guess
            @card = card
        end

        def correct?
            @guess == card.answer #where is this .answer being called from?
        end 
end







        # Classes:
        # Card
        # --> Attributes:
            # - question
            # - answer
            # - category
        # Turn
            # - card
            # - guess
            # - correct?
            # - feedback
        # Deck
        # Round
            # - deck
            # - turns
            # - current_card 
            # - take_turn
            # - class
            # - correct?
            # - number_correct
            # - current_card
            # - feedback
            # - number_correct_by_category
            # - percent_correct
        
        # Card_Generator
        