class Board
  attr_accessor :grid
  attr_reader :i

  def initialize
    @grid = Array.new(7) { Array.new(6, '.') }
    @i = {
      'A' => 0,
      'B' => 1,
      'C' => 2,
      'D' => 3,
      'E' => 4,
      'F' => 5,
      'G' => 6
    }
  end
end
