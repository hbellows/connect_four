require 'minitest/autorun'
require 'minitest/pride'
require './lib/message_center'

class MessageCenterTest < Minitest::Test

  def test_it_exists
    message_center = MessageCenter.new

    assert_instance_of MessageCenter, message_center
  end

  def test_it_has_a_welcome_message
    # skip
    message_center = MessageCenter.new

    expected =
    "Connect Four is a classic board game where players take turns trying to\n
    create a line of four of their own pieces without being blocked by their\n
    opponent.\n\nThe rules are simple:\n At the prompt each player, in turn,
    will choose a column in which to drop their chip.\n Player one = 'X',
    Player two = 'O'.\n The game ends when one of the two players successfully
    lines up four of\n their pieces horizontally, vertically, or diagonally.\n
    The first to player to line up for chips wins the round. The game ends\n
    in a draw if the 7-column, 6-row grid is filled without either player\n
    successfully connecting four.\n"

    assert_equal expected, message_center.welcome
  end

  def test_it_can_print_a_line_separator
    message_center = MessageCenter.new

    expected = "---------------------------------------------------------------------------"

    assert_equal expected, message_center.pretty_line
  end

end
