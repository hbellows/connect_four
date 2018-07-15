require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_center'

class GameCenterTest < Minitest::Test

  def test_it_exists
    game_center = GameCenter.new

    assert_instance_of GameCenter, game_center
  end

  def test_it_can_take_in_and_sanitize_user_input
    game_center = GameCenter.new

    assert_equal "G", game_center.sanitize('g')
  end

  def test_it_can_detect_invalid_user_input
    game_center = GameCenter.new

    assert_equal false, game_center.input_valid?('z')
  end

end
