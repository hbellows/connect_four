class Board
  attr_reader :grid

  def initialize
    @grid = {
      'A' => ['6', '.', '.', '.', '.', '.', '.'],
      'B' => ['5', '.', '.', '.', '.', '.', '.'],
      'C' => ['4', '.', '.', '.', '.', '.', '.'],
      'D' => ['3', '.', '.', '.', '.', '.', '.'],
      'E' => ['2', '.', '.', '.', '.', '.', '.'],
      'F' => ['1', '.', '.', '.', '.', '.', '.'],
      'G' => ['0', '1', '2', '3', '4', '5', '6']
      }

  end

  def display_top_line
    @grid.keys
  end

  def display_grid
    @grid.values.map.with_index do |line|
      line << "\n"
    end.join
  end

end
