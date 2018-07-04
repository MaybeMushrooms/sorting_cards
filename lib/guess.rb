require './lib/card'

class Guess
  attr_reader :card_to_s,
              :response,
              :card,
              :correct,
              :feedback
  def initialize(response, card)
    @response = response
    @card = card
    @card_to_s = "#{card.value} of #{card.suit}"
    @correct = correct?
    @feedback = feedback
  end
  
  def correct?
    if @card_to_s == @response
        return true
  end
end

  def feedback(response)
    if correct? 
        return "Correct!"
    else 
        return "Incorrect"
    end
  end
end

