require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_exists
    board = Board.new

    assert_instance_of Board, board
  end

  def test_it_has_a_board
    board = Board.new

    expected = {'A' => [],
    'B' => [],
    'C' => [],
    'D' => [],
    'E' => [],
    'F' => [],
    'G' => []}

    assert_equal expected, board.grid
  end


end
