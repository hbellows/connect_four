module MessageCenter

  def welcome
    puts "    Connect Four is a classic board game where players take turns trying to
    create a line of four of their own pieces without being blocked by their
    opponent.

    The rules are simple:
    At the prompt each player, in turn, will choose a column in which to drop
    their chip.

    The game ends when one of the two players successfully lines up four of
    their pieces horizontally, vertically, or diagonally.

    The first to player to line up for chips wins the round. The game ends
    in a draw if the 7-column, 6-row grid is filled without either player
    successfully connecting four.

    Player one = 'X', Player two = 'O'."
  end

  def pretty_line
    puts "\n"
    puts '-' * 80
    puts "\n"
  end

  def display_game_board
    puts display_top_line.join
    puts display_grid
    puts "\n"
  end

  def player_one_greeting
    puts 'Please choose a column: '
    puts "\n"
    print '> '
  end

  def invalid_entry
    puts "\n"
    puts 'Invalid entry.  Please enter a column between A and G.'
    puts "\n"
  end

  def valid_entry
    puts "\n"
    puts 'Thank you.'
    #puts updated grid
    puts 'Please wait for Player Two.'
  end


end
