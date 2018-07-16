require './lib/board'
require './lib/game_center'
require './lib/message_center'

class ConnectFour
  include MessageCenter

  def initialize
    @board = Board.new
  end

  def intro
    pretty_line
    welcome
    @board.repl
    puts "\n"
    game_center = GameCenter.new
    game_center.player_one_turn
  end

end
