require './lib/card'
require './lib/turn'

RSpec.configure do |config|
    config.formatter = :documentation
end

# This `it block` simply tests whether or not the `turn` instance of the `Turn` class exists.
RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("guess", card)   
    
    expect(turn).to be_instance_of(Turn)
  end


# The `.guess` method is retrieving and returning the user's guess input from the `turn` intsance.
# It gives access to the guess the user made when prompted with the questions associated with the
# `card` instance. Because the user's guess was "Juneau", the `.guess` method returns "Juneau".

# Basically, we passed "Juneau" as an argument into the instance `turn`.
# So when we call the `.guess` method on the `turn` instance it returns the guess of "Juneau".
# This return equals the argument we passed it, so the test was successful.
  it 'returns the user guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card) 
    
    # "Juneau" is the user's guess.

    expect(turn.guess).to eq("Juneau")
  end


# This `it block` tests to make sure I can change my default answer input to any string
# to make sure it still runs. It does exactly the same thing as the block above,
# but with a different string.
  it 'it can have a different guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Austin", card) 

    expect(turn.guess).to eq("Austin")
  end


# This `it block` evaluates whether or not the user's guess matches the correct answer
# stored in the `card` instance.
# It returns a boolean value indicating if it is indeed correct.
# If the answer is correct    => true  is returned
# If the answer is incorrect  => false is returned
  it 'checks if user guess is correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card) 

    expect(turn.correct?).to eq(true)
  end


# This `it block` evaluates the correctness of the user's guess by comparing it 
# against the expected answer stored in the `card` instance.
# It then provides feedback depending on whether or not their guess was correct.
  it 'gives feedback to user guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card) 

    expect(turn.feedback).to eq("Correct!") 
    end
    
end
