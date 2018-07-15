require_relative './board'
board = Board.new


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
