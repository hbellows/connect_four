require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'

class PlayerTest < Minitest::Test

  def test_it_exists
    player = Player.new

    assert_instance_of Player, player
  end

  def test_player_provides_valid_input
    player = Player.new

    input = "12"

    assert_equal false, player.input_valid?(input)
  end

end
