require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_center'

class GameCenterTest < Minitest::Test

  def test_it_exists
    game_center = GameCenter.new

    assert_instance_of GameCenter, game_center
  end

  def test_it_can_sanitize_and_prepare_user_input
    game_center = GameCenter.new

    assert_equal "G", game_center.sanitize('g')
  end

  def test_it_can_detect_invalid_user_input
    game_center = GameCenter.new

    clean_input = game_center.sanitize('z')
    assert_equal false, game_center.input_valid?(clean_input)
  end

  def test_it_can_detect_valid_user_input
    game_center = GameCenter.new

    clean_input = game_center.sanitize('a')
    assert_equal true, game_center.input_valid?(clean_input)
  end

  def test_it_can_generate_an_input_invalidation_message
    game_center = GameCenter.new

    input = 'z'

    clean_input = game_center.sanitize(input)
    game_center.input_valid?(clean_input)

    expected = 'The letter you have entered is invalid.  Please enter a letter from "A" to "G".'

    assert_equal expected, game_center.validate_input(clean_input)
  end

  def test_it_can_generate_an_input_validation_message
    game_center = GameCenter.new

    input = 'a'

    clean_input = game_center.sanitize(input)
    game_center.input_valid?(clean_input)

    expected = "You have choosen column A."

    assert_equal expected, game_center.validate_input(clean_input)
  end

  def test_it_can_translate_valid_input_to_

  end


end
