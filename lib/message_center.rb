class MessageCenter

  def welcome
"Connect Four is a classic board game where players take turns trying to
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
    '-' * 75
  end


end
