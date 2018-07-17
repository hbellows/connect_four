class Board
  attr_reader :grid,
              :header

  def initialize
    @grid = Array.new(6) {Array.new(7)}
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

  # def display_header
  #   @header.keys.join(' ')
  # end

  def repl
    puts '==' * 10
    puts ' A  '+'B  '+'C  '+'D  '+'E  '+'F  '+'G'"\n"
    print grid[0][0]+' '+grid[1][0]+' '+grid[2][0]+' '+grid[3][0]+' '+grid[4][0]+' '+grid[5][0]+' '+grid[6][0]+' '+"\n"
    print grid[0][1]+' '+grid[1][1]+' '+grid[2][1]+' '+grid[3][1]+' '+grid[4][1]+' '+grid[5][1]+' '+grid[6][1]+' '+"\n"
    print grid[0][2]+' '+grid[1][2]+' '+grid[2][2]+' '+grid[3][2]+' '+grid[4][2]+' '+grid[5][2]+' '+grid[6][2]+' '+"\n"
    print grid[0][3]+' '+grid[1][3]+' '+grid[2][3]+' '+grid[3][3]+' '+grid[4][3]+' '+grid[5][3]+' '+grid[6][3]+' '+"\n"
    print grid[0][4]+' '+grid[1][4]+' '+grid[2][4]+' '+grid[3][4]+' '+grid[4][4]+' '+grid[5][4]+' '+grid[6][4]+' '+"\n"
    print grid[0][5]+' '+grid[1][5]+' '+grid[2][5]+' '+grid[3][5]+' '+grid[4][5]+' '+grid[5][5]+' '+grid[6][5]+' '+"\n"
    puts '==' * 10
  end

end

#
#
# def display_rows
#   @grid.map do |row|
#     row.push("\n")
#   end.join
# end
