require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'

class PlayerTest < Minitest::Test

  def setup
    @board = Board.new
    @player = Player.new(@board)
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_it_can_validate_input
    assert_equal true, @player.input_valid?('A')
  end

  def test_it_can_determine_if_the_column_is_not_full
    @player.place('B')

    assert_equal false, @player.full('B')
  end

  def test_it_can_determine_if_the_column_is_full
    6.times do
      @player.place('A')
    end

    assert_equal true, @player.full('A')
  end

  def test_it_can_place_player_piece
    assert_equal 'X', @player.place('A')
    assert_equal 'X', @player.place('B')
  end

  def test_it_can_detect_a_player_verticle_win
    3.times do
      @player.place('A')
    end
    assert_equal false, @player.player_vertical_win?

    @player.place('A')
    assert_equal true, @player.player_vertical_win?
  end

  def test_it_can_detect_a_player_horizontal_win
    @player.place('D')
    @player.place('E')
    @player.place('F')
    assert_equal false, @player.player_horizontal_win?

    @player.place('G')
    assert_equal true, @player.player_horizontal_win?
  end

  def test_it_can_wait_for_a_player_diagonal_win
    @player.grid = [
      ["A0", "A1", "A2", "A3", "A4", "A5"],
      ["B0", "B1", "A2", "B3", "B4", "X"],
      ["C0", "C1", "C2", "C3", "X", "C5"],
      ["D0", "D1", "D2", "X", "C4", "D5"],
      ["E0", "E1", "E2", "E3", "E4", "E5"],
      ["F0", "F1", "F2", "F3", "F4", "F5"],
      ["G0", "G1", "G2", "G3", "G4", "G5"]
    ]
    assert_equal false, @player.player_diagonal_win?
  end

  def test_it_can_detect_a_player_diagonal_win
    @player.grid = [
      ["X", "A1", "A2", "A3", "A4", "A5"],
      ["B0", "X", "A2", "B3", "B4", "B5"],
      ["C0", "C1", "X", "C3", "C4", "C5"],
      ["D0", "D1", "D2", "X", "C4", "D5"],
      ["E0", "E1", "E2", "E3", "E4", "E5"],
      ["F0", "F1", "F2", "F3", "F4", "F5"],
      ["G0", "G1", "G2", "G3", "G4", "G5"]
    ]
    assert_equal true, @player.player_diagonal_win?
  end
end
