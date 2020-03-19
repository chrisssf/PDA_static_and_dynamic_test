require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("./card_game.rb")
require_relative("./card.rb")

class CardGameTest < MiniTest::Test

  def setup
    @game = CardGame.new()
    @card1 = Card.new("clubs", 1)
    @card2 = Card.new("hearts", 8)
    @cards = [@card1, @card2]
  end

  def test_ace_returns_true
    assert_equal(true, @game.check_for_Ace(@card1))
  end

  def test_not_ace_returns_false
    assert_equal(false, @game.check_for_Ace(@card2))
  end

  def test_returns_highest_card
    assert_equal(@card2, @game.highest_card(@card1, @card2))
  end

  def test_returns_total_of_given_cards
    assert_equal("You have a total of 9", @game.cards_total(@cards))
  end


  def test_card_has_value
    assert_equal(1, @card1.value)
  end

  def test_card_has_suit
    assert_equal("clubs", @card1.suit)
  end


end
