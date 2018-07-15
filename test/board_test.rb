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

    expected = {'A' => ['.', '.', '.', '.', '.', '.', '.'],
    'B' => ['.', '.', '.', '.', '.', '.', '.'],
    'C' => ['.', '.', '.', '.', '.', '.', '.'],
    'D' => ['.', '.', '.', '.', '.', '.', '.'],
    'E' => ['.', '.', '.', '.', '.', '.', '.'],
    'F' => ['.', '.', '.', '.', '.', '.', '.'],
    'G' => ['.', '.', '.', '.', '.', '.', '.']}

    assert_equal expected, board.grid
  end

  def test_it_can_display_the_top_line_of_the_game_board
    board = Board.new

    expected = ["A", "B", "C", "D", "E", "F", "G"]

    assert_equal expected, board.display_top_line
  end

  def test_a_grid_has_a_display
    # skip
    board = Board.new

    expected =
         [['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"],
          ['.', '.', '.', '.', '.', '.', '.', "\n"]]

    assert_equal expected, board.display_grid
  end

end
