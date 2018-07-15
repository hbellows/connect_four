require_relative './board'
board = Board.new

puts '-' * 75
puts 'Connect Four is a classic board game where players take turns trying to'
puts 'create a line of four of their own pieces without being blocked by their'
puts 'opponent.'
puts "\n"
puts 'The rules are simple:'
puts 'At the prompt each player, in turn, will choose a column in which to'
puts 'drop their chip. Player one = "X", Player two = "O".'
puts "\n"
puts 'The game ends when one of the two players successfully lines up four of'
puts 'their pieces horizontally, vertically, or diagonally.'
puts "\n"
puts 'The first to player to line up for chips wins the round. The game ends'
puts 'in a draw if the 7-column, 6-row grid is filled without either player'
puts 'successfully connecting four.'
puts '-' * 75
puts board.display_top_line.join
puts board.display_grid
puts "\n"
puts 'Please choose a column: '
puts "\n"
print '> '
input = gets.chomp
player_input = input.upcase
puts "\n"
puts "You've choosen column #{player_input}."
puts "\n"
puts '-' * 75
