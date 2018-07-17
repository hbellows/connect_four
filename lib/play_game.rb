require './lib/board'
require './lib/game_center'
require './lib/message_center'

class PlayGame
  include MessageCenter

  def initialize
    @board = Board.new
  end
  #
  # def intro
  #   pretty_line
  #   welcome
  #   @board.repl
  #   puts "\n"
  #   game_center = GameCenter.new
  #   game_center.player_one_turn
  # end
  def start
    play_loop
  end

  def play_loop
    until player_win? || computer_win?
      repl
      puts `clear`
      sleep 0.5
      place_computer_piece('C')
      puts `clear`
      repl
      place_player('P')
      puts `clear`
      repl
    end
  end

end
