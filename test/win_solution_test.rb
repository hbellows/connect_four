require 'minitest/autorun'
require 'minitest/pride'
require './lib/win_solution'
require './lib/board'

class WinSolutionTest < Minitest::Test
  attr_reader :wins, :board

  def setup
    @wins = WinSolution.new
    @board = Board.new
  end

  def test_player_vertical_win?
    4.times do |i|
      con.grid[0][i] = 'X'
    end

    assert con.player_vertical_win?
  end

  def test_player_win_different_column
    4.times do |i|
      con.grid[3][i] = 'X'
    end

    assert con.player_vertical_win?
  end

  def test_horizontal_win?
    con.grid = [
      ["X", "A", "A", "A", "A", "A"],
      ["X", "B", "B", "B", "B", "B"],
      ["X", "C", "C", "C", "C", "C"],
      ["X", "D", "D", "D", "D", "D"],
      ["E", "E", "E", "E", "E", "E"],
      ["F", "F", "F", "F", "F", "F"],
      ["G", "G", "G", "G", "G", "G"]
    ]

    assert con.player_horizontal_win?
  end

  def test_diagonal_win_down_and_to_right
    con.grid = [
      ["X", ".", ".", ".", ".", "."],
      [".", "X", ".", ".", ".", "."],
      [".", ".", "X", ".", ".", "."],
      [".", ".", ".", "X", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."]
    ]

    assert con.player_diagonal_win?
  end

  def test_diagonal_win_different_down_right
    con.grid = [
      ["A1", "X", "A3", "A4", "A5", "A6"],
      ["B1", "B2", "X", "B4", "B5", "B6"],
      ["C1", "C2", "C3", "X", "C5", "C6"],
      ["D1", "D2", "D3", "D4", "X", "D6"],
      ["E1", "E2", "E3", "E4", "E5", "E6"],
      ["F1", "F2", "F3", "F4", "F5", "F6"],
      ["G1", "G2", "G3", "G4", "G5", "G6"]
    ]

    assert con.player_diagonal_win?

  end

  def test_diagonal_win_down_left
    skip
    con.grid = [
      [".", ".", ".", "X", ".", "."],
      [".", ".", "X", ".", ".", "."],
      [".", "X", ".", ".", ".", "."],
      ["X", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."]
    ]

    assert con.player_diagonal_win?

  end

  def test_diagonal_win_diff_down_left
    skip
    con.grid = [
      [".", ".", ".", ".", "X", "."],
      [".", ".", ".", "X", ".", "."],
      [".", ".", "X", ".", ".", "."],
      [".", "X", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "."]
    ]

    assert con.player_diagonal_win?
  end
end
