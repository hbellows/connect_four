class Board
  attr_reader :grid,
              :header

  def initialize
    @grid = Array.new(6) {Array.new(7, '.')}
    @header = {
      'A' => 0,
      'B' => 1,
      'C' => 2,
      'D' => 3,
      'E' => 4,
      'F' => 5,
      'G' => 6
    }
  end

  def display_header
    @header.keys.join
  end

  def display_rows
    @grid.map do |row|
      row.push("\n")
    # require "pry"; binding.pry
    end.join
  end
end
