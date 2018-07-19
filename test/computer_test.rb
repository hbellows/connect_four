require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer'
require './lib/board'

class ComputerTest < Minitest::Test

  def setup
    @board = Board.new
    @computer = Computer.new(@board)
  end

  def test_it_exists
    assert_instance_of Computer, @computer
  end

  def test_it_can_validate_input
    assert_equal true, @computer.input_valid?('A')
  end

  def test_it_can_determine_if_the_column_is_not_full
    @computer.place('D')
    @computer.place_computer_piece

    assert_equal false, @computer.full('D')
  end

  def test_it_can_determine_if_the_column_is_full
    6.times do
      @computer.place('G')
    end

    assert_equal true, @computer.full('G')
  end

  def test_it_can_place_computer_piece
    @computer.place('A')
    assert_equal 'O', @computer.place_computer_piece

    @computer.place('G')
    assert_equal 'O', @computer.place_computer_piece
  end

  def test_it_can_detect_computer_verticle_win
    3.times do
      @computer.place('B')
    end
    assert_equal false, @computer.computer_vertical_win?

    @computer.place('B')
    assert_equal true, @computer.computer_vertical_win?
  end

  def test_it_can_detect_computer_horizontal_win
    @computer.place('C')
    @computer.place('D')
    @computer.place('E')
    assert_equal false, @computer.computer_horizontal_win?

    @computer.place('F')
    assert_equal true, @computer.computer_horizontal_win?
  end

  def test_it_can_wait_for_a_computer_diagonal_win
    @computer.grid = [
      ["A0", "A1", "A2", "A3", "A4", "A5"],
      ["B0", "B1", "A2", "B3", "B4", "O "],
      ["C0", "C1", "C2", "C3", "O ", "C5"],
      ["D0", "D1", "D2", "O ", "C4", "D5"],
      ["E0", "E1", "E2", "E3", "E4", "E5"],
      ["F0", "F1", "F2", "F3", "F4", "F5"],
      ["G0", "G1", "G2", "G3", "G4", "G5"]
    ]
    assert_equal false, @computer.computer_diagonal_win?
  end

  def test_it_can_detect_a_computer_diagonal_win
    @computer.grid = [
      ["O ", "A1", "A2", "A3", "A4", "A5"],
      ["B0", "O ", "A2", "B3", "B4", "B5"],
      ["C0", "C1", "O ", "C3", "C4", "C5"],
      ["D0", "D1", "D2", "O ", "C4", "D5"],
      ["E0", "E1", "E2", "E3", "E4", "E5"],
      ["F0", "F1", "F2", "F3", "F4", "F5"],
      ["G0", "G1", "G2", "G3", "G4", "G5"]
    ]
    assert_equal true, @computer.computer_diagonal_win?
  end
end
