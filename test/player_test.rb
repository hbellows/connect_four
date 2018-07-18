require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'

class PlayerTest < Minitest::Test

  def setup
    @board = Board.new
    @player = Player.new(@board)
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_it_can_validate_input
    assert_equal true, @player.input_valid?('A')
  end

  def test_it_can_determine_if_the_column_is_not_full
    @player.place('B')

    assert_equal false, @player.full('B')
  end

  def test_it_can_determine_if_the_column_is_full
    6.times do
      @player.place('A')
    end

    assert_equal true, @player.full('A')
  end

  def test_it_can_place_player_piece
    assert_equal 'X', @player.place('A')
    assert_equal 'X', @player.place('B')
  end

end
