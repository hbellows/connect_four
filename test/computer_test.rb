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


end
