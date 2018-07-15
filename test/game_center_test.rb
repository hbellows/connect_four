require 'minitest/autorun'
require 'minitest/pride'
require './lib/game_center'
require './lib/board'

class GameCenterTest < Minitest::Test

  def test_it_exists
    game_center = GameCenter.new

    assert_instance_of GameCenter, game_center
  end

  def test_it_can_sanitize_and_prepare_user_input
    # skip
    game_center = GameCenter.new

    assert_equal "G", game_center.sanitize('g')
  end

  def test_it_can_detect_valid_user_input
    # skip
    game_center = GameCenter.new

    cleaned_input = game_center.sanitize('a')
    assert_equal true, game_center.input_valid?(cleaned_input)
  end

  def test_it_can_generate_an_input_validation_message
    # skip
    game_center = GameCenter.new

    input = 'a'

    cleaned_input = game_center.sanitize(input)
    game_center.input_valid?(cleaned_input)

    expected = "You have choosen column A."

    assert_equal expected, game_center.validate_input(cleaned_input)
  end

  def test_it_can_detect_invalid_user_input
    # skip
    game_center = GameCenter.new

    cleaned_input_1 = game_center.sanitize('z')
    assert_equal false, game_center.input_valid?(cleaned_input_1)

    cleaned_input_2 = game_center.sanitize('12')
    assert_equal false, game_center.input_valid?(cleaned_input_2)
  end

  def test_it_can_generate_an_input_invalidation_message
    # skip
    game_center = GameCenter.new

    input = 'z'

    cleaned_input = game_center.sanitize(input)
    game_center.input_valid?(cleaned_input)

    expected = 'Invalid entry.  Please enter a new column.'

    assert_equal expected, game_center.validate_input(cleaned_input)
  end

end
