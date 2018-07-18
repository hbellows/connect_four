require './lib/commands'

class Computer
  include Commands

  attr_accessor :grid

  def initialize(board)
    @grid = board.grid
  end

  def place_computer_piece
    column = i.keys.sample
    if input_valid?(column) && !full(column)
      place(column)
    else
      place_computer_piece
    end
  end

  def place(column_index)
    index = 0
    column = grid[i[column_index]]
    until column[index + 1] != '.' || column[index + 1].nil?
      index += 1
    end
    grid[i[column_index]][index] = 'O'
  end

  def input_valid?(input)
    if i.keys.include?(input) && !full(input)
      return true
    end
  end

  def full(input)
    !grid[i[input]].include?('.')
  end

  def win?
    if computer_diagonal_win? || computer_vertical_win? || computer_horizontal_win?
      @game_over = true
      return true
    end
    return false
  end

  def computer_vertical_win?
    (0..6).each do |index|
      (0..5).each do |idx|
        won = [grid[index][idx], grid[index][idx+1], grid[index][idx+2], grid[index][idx+3]]
        return true if won.all? {|cell| cell=='O'}
      end
    end
    return false
  end

  def computer_horizontal_win?
    (0..6).each do |index|
      (0..6).each do |idx|
        next if grid[index+3].nil?
        won = [grid[index][idx], grid[index+1][idx], grid[index+2][idx], grid[index+3][idx]]
        return true if won.all? {|cell| cell=='O'}
      end
    end
    return false
  end

  def computer_diagonal_win?
    diagonal = []
    grid.each_index do |index|
      (0..3).each do |idx|
        next if grid[index+3].nil?
        diagonal << [grid[index][idx], grid[index+1][idx+1], grid[index+2][idx+2], grid[index+3][idx+3]]
        diagonal << [grid[index][idx], grid[index-1][idx+1], grid[index-2][idx+2], grid[index-3][idx+3]]
      end
    end
      diagonal.any? do |line|
        return true if line.all? {|cell| cell=='O'}
      end
    return false
  end
end
