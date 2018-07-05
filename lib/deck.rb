class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
    @count = count
  end

  def count
    cards.length
  end
end