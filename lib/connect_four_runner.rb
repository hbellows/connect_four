require './lib/board'
require './lib/game_center'
require './lib/message_center'
require './lib/board'

class ConnectFour

  include MessageCenter
  include Board

  def intro
    pretty_line
    welcome
    pretty_line
    puts display_top_line.join
    puts display_grid
    player_turn
  end

  # board = Board.new
  # puts board.display_top_line.join
  # print board.display_grid
  # puts "\n"
  #
  # game_center = GameCenter.new

  # clean_input = game_center.sanitize(input)
  # puts "\n"
  # puts game_center.validate_input(clean_input)
  # puts "\n"
  # puts message_center.pretty_line

end
