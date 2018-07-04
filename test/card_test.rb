gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card'

class CardTest < Minitest::Test
  def test_it_has_a_value
    card = Card.new('Ace', 'Spades')
    assert_equal 'Ace', card.value
  end
end

class CardTest < Minitest::Test
  def test_it_has_a_suit
    card = Card.new('Ace', 'Spades')
    assert_equal 'Spades', card.suit
  end
end
