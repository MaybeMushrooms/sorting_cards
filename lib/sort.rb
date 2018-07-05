require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/guess'

class Sort
  attr_reader :value,
              :suit,
              :sort,
              :card,
              :deck,
              :round

  def initialize
    @sort = sort
    @card = card
    @deck = deck
  end
end