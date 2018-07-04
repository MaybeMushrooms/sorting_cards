gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'
require_relative '../lib/card'

class GuessTest < Minitest::Test
  def test_it_has_a_card
    card = Card.new('Ace', 'Spades')
    guess = Guess.new('10 of Hearts', card)

    assert_equal card, guess.card
  end

  def test_it_has_a_response
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)

    assert_equal '10 of Hearts', guess.response
  end

  def test_guess_correct
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)
    assert_equal true, guess.correct?
  end

  def test_it_has_feedback
    skip
    card = Card.new('10', 'Hearts')
    guess = Guess.new('10 of Hearts', card)
    assert_equal "Correct!", guess.feedback 
  end
end
