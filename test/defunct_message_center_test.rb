require 'minitest/autorun'
require 'minitest/pride'
require './lib/message_center'

class MessageCenterTest < Minitest::Test

  def test_it_exists
    skip
    message_center = MessageCenter.new

    assert_instance_of MessageCenter, message_center
  end

  def test_it_has_a_welcome_message
    skip
    # skip
    message_center = MessageCenter.new

    expected =
"Connect Four is a classic board game where players take turns trying to
create a line of four of their own pieces without being blocked by their
opponent.

The rules are simple:
At the prompt each player, in turn, will choose a column in which to drop
their chip.

The game ends when one of the two players successfully lines up four of
their pieces horizontally, vertically, or diagonally.

The first to player to line up for chips wins the round. The game ends
in a draw if the 7-column, 6-row grid is filled without either player
successfully connecting four.

Player one = 'X', Player two = 'O'."

    assert_equal expected, message_center.welcome
  end

  def test_it_can_print_a_line_separator
    skip
    message_center = MessageCenter.new

    expected = "---------------------------------------------------------------------------"

    assert_equal expected, message_center.pretty_line
  end

  def test_it_displays_a_message_when_the_computer_wins
    skip
    message_center = MessageCenter.new

    expected = 'I WIN!'

    assert_equal expected, message_center.computer_wins
  end

  def test_it_displays_a_message_when_the_player_wins
    skip
    message_center = MessageCenter.new

    expected = 'You got lucky....this time.....'

    assert_equal expected, message_center.player_wins
  end

  def test_it_displays_a_message_for_player_column_selection
    skip
    message_center = MessageCenter.new

    expected = 'Please choose a letter between A and G'

    assert_equal expected, message_center.choose_column
  end

  def test_it_can_ask_a_player_to_play_again
    skip
    message_center = MessageCenter.new

    expected = 'Would you like to try again? Y or N'

    assert_equal expected, message_center.play_again
  end

  def test_it_displays_a_thanks_for_playing_message
    skip
    message_center = MessageCenter.new

    expected = 'Thanks for playing!'

    assert_equal expected, message_center.thank_you
  end

  def test_it_can_detect_unrecognized_player_input
    skip
    message_center = MessageCenter.new

    expected = 'I didn\'t recognize your answer, please try again'

    assert_equal expected, message_center.input_not_recognized
  end
end
