require_relative './board'
board = Board.new

puts '*' * 75
puts 'The rules are simple:'
puts "\n"
puts 'Players take turns trying to create a line of four of their own pieces'
puts 'without being blocked by their opponent. The game ends when one of the'
puts 'two players successfully lines up four of their pieces horizontally,'
puts 'vertically, or diagonally and wins, or in a draw if the 7-column,'
puts '6-row grid is filled without either player successfully connecting four.'
puts '-' * 75
puts "\n"

puts 'Would you like to play a game?'
puts "\n"
puts 'ABCDEFG'
puts ".......\n" * 7
puts "\n"
