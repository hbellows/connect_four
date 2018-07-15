class Board
  attr_reader :grid

  def initialize
    @grid = {
      'A' => ['.', '.', '.', '.', '.', '.', '.'],
      'B' => ['.', '.', '.', '.', '.', '.', '.'],
      'C' => ['.', '.', '.', '.', '.', '.', '.'],
      'D' => ['.', '.', '.', '.', '.', '.', '.'],
      'E' => ['.', '.', '.', '.', '.', '.', '.'],
      'F' => ['.', '.', '.', '.', '.', '.', '.'],
      'G' => ['.', '.', '.', '.', '.', '.', '.']
      }

  end

  def display_top_line
    @grid.keys
  end

  def display_grid
    @grid.values.map.with_index do |line|
      require "pry"; binding.pry
      line << "\n"
    end
  end
  
end
