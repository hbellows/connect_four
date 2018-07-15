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
    'Connect Four is a classic board game where players take turns trying to'
    'create a line of four of their own pieces without being blocked by their'
    'opponent.'
    "\n"
    'The rules are simple:'
    'At the prompt each player, in turn, will choose a column in which to'
    'drop their chip. Player one = "X", Player two = "O".'
    "\n"
    'The game ends when one of the two players successfully lines up four of'
    'their pieces horizontally, vertically, or diagonally.'
    "\n"
    'The first to player to line up for chips wins the round. The game ends'
    'in a draw if the 7-column, 6-row grid is filled without either player'
    'successfully connecting four.'

    assert_equal expected, message_center.welcome
  end

end
