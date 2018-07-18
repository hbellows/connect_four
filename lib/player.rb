
require './lib/commands'

class Player
  include Commands
  attr_accessor :grid

  def initialize(board)
    @grid = board.grid
  end

  def place(column_index)
    index = 0
    column = grid[i[column_index]]
    until column[index + 1] != '.' || column[index + 1].nil?
      index += 1
    end
    grid[i[column_index]][index] = 'X'
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
    if player_diagonal_win? || player_vertical_win? || player_horizontal_win?
      @game_over = true
      return true
    end
    return false
  end

  def player_vertical_win?
    (0..6).each do |index|
      (0..3).each do |idx|
        won = [grid[index][idx], grid[index][idx+1], grid[index][idx+2], grid[index][idx+3]]
        return true if won.all? {|cell| cell=='X'}
      end
    end
    return false
  end

  def player_horizontal_win?
    (0..6).each do |index|
      (0..6).each do |idx|
        next if grid[index+3].nil?
        won = [grid[index][idx], grid[index+1][idx], grid[index+2][idx], grid[index+3][idx]]
        return true if won.all? {|cell| cell=='X'}
      end
    end
    return false
  end

  def player_diagonal_win?
    diagonal = []
    grid.each_index do |index|
      (0..3).each do |idx|
        next if grid[index+3].nil?
        diagonal << [grid[index][idx], grid[index+1][idx+1], grid[index+2][idx+2], grid[index+3][idx+3]]
        diagonal << [grid[index][idx], grid[index-1][idx+1], grid[index-2][idx+2], grid[index-3][idx+3]]
        diagonal.any? do |line|
          return true if line.all? {|cell| cell=='X'}
        end
      end
    end
    return false
  end
end
