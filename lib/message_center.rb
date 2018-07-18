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

    Player one = 'X', Player two = 'O'.\n"
  end

  def pretty_line
    puts "\n"
    puts '-' * 80
    puts "\n"
  end

  def computer_wins
    puts 'I WIN!'
  end

  def player_wins
    puts 'You got lucky....this time.....'
  end

  def choose_column
    puts 'Please choose a letter between A and G'
  end

  def play_again
    puts 'Would you like to try again? Y or N'
  end

  def thank_you
    puts 'Thanks for playing!'
  end

  def input_not_recognized
    puts 'I didn\'t recognize your answer, please try again'
  end
end
