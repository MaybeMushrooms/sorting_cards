require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/round'

class SortTest < Minitest::Test

def test_it_exist
card_1 = Card.new("4","Hearts")
card_2 = Card.new("Jack", "Clubs")
card_3 = Card.new("5", "Diamonds")
card_4 = Card.new("Ace", "Spades")
card_5 = Card.new("Ace", "Diamonds")
deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

assert_equal [card_1, card_3, card_2, card_5, card_4], deck.sort
end
end