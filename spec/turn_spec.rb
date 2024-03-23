require './lib/card'
require './lib/turn'

RSpec.configure do |config|
    config.formatter = :documentation
end

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("guess", card)   
    
    expect(turn).to be_instance_of(Turn)
  end

  it 'returns the user guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("guess", card) 

    expect(guess).to eq("Juneau")
  end
end
