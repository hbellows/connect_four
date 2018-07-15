require './lib/board'
require './lib/game_center'
require './lib/message_center'

class ConnectFour

  include MessageCenter

  def intro
    pretty_line
    welcome
    pretty_line
  end

  # board = Board.new
  # puts board.display_top_line.join
  # print board.display_grid
  # puts "\n"
  #
  # game_center = GameCenter.new
  # puts 'Please choose a column: '
  # puts "\n"
  # print '> '
  # input = gets.chomp
  # clean_input = game_center.sanitize(input)
  # puts "\n"
  # puts game_center.validate_input(clean_input)
  # puts "\n"
  # puts message_center.pretty_line

end
