require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_a_player_starts_with_no_moves
    player = Player.new

    assert_equal [], player.moves
  end

  def test_a_player_can_store_moves
    player = Player.new

    assert_equal ['A'], player.saved_moves('A')
  end

  def test_it_can_place_a_game_piece
    player = Player.new

    
  end
end
