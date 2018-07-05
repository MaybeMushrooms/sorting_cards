require './lib/guess'

class Round
  attr_reader :deck,
             :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(response)
   @guesses << Guess.new(response, current_card)
   @deck.cards.rotate!
  end

 def number_correct
   number_correct = 0
   @guesses.map do |guess|
     if guess.correct? == true
       number_correct += 1
     end
   end
   number_correct
 end

 def percent_correct
   (number_correct * 100) / @guesses.length
 end
end