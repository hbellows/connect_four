require './lib/board'
require './lib/computer'
require './lib/player'
require './lib/commands'
require './lib/message_center'

class PlayGame
  include Commands
  include MessageCenter

  attr_reader :computer, :player
  attr_accessor :grid, :game_over

  def initialize
    @game_over = false
  end

  def repl
    puts '==' * 10
    puts ' A  '+'B  '+'C  '+'D  '+'E  '+'F  '+'G'"\n"
    print ' '+grid[0][0]+'  '+grid[1][0]+'  '+grid[2][0]+'  '+grid[3][0]+'  '+grid[4][0]+'  '+grid[5][0]+'  '+grid[6][0]+' '+"\n"
    print ' '+grid[0][1]+'  '+grid[1][1]+'  '+grid[2][1]+'  '+grid[3][1]+'  '+grid[4][1]+'  '+grid[5][1]+'  '+grid[6][1]+' '+"\n"
    print ' '+grid[0][2]+'  '+grid[1][2]+'  '+grid[2][2]+'  '+grid[3][2]+'  '+grid[4][2]+'  '+grid[5][2]+'  '+grid[6][2]+' '+"\n"
    print ' '+grid[0][3]+'  '+grid[1][3]+'  '+grid[2][3]+'  '+grid[3][3]+'  '+grid[4][3]+'  '+grid[5][3]+'  '+grid[6][3]+' '+"\n"
    print ' '+grid[0][4]+'  '+grid[1][4]+'  '+grid[2][4]+'  '+grid[3][4]+'  '+grid[4][4]+'  '+grid[5][4]+'  '+grid[6][4]+' '+"\n"
    print ' '+grid[0][5]+'  '+grid[1][5]+'  '+grid[2][5]+'  '+grid[3][5]+'  '+grid[4][5]+'  '+grid[5][5]+'  '+grid[6][5]+' '+"\n"
    puts '==' * 10
  end

  def start
    board = Board.new
    @grid = board.grid
    @player = Player.new(board)
    @computer = Computer.new(board)
    play_loop
  end

  def play_loop
    until game_over == true
      puts `clear`
      repl
      computer.place_computer_piece
      puts `clear`
      repl
      break if computer.win?
      place_player
      puts `clear`
      repl
      break if player.win?
    end
    if computer.win?
      computer_wins
      exit_message
    else
      player_wins
      exit_message
    end
  end

  def place_player
    print '> '
    input = gets.chomp.upcase
    exit_message if quit_commands(input)
    validation_loop(input)
  end

  def validation_loop(input)
    if player.input_valid?(input) && !player.full(input)
      player.place(input)
    else
      choose_column
      place_player
    end
  end

end
