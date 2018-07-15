require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_center'

class GameCenterTest < Minitest::Test

  def test_it_exists
    game_center = GameCenter.new

    assert_instance_of GameCenter, game_center
  end

end
