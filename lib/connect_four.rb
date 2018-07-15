require_relative './board'
require_relative './message_center'
require_relative './game_center'

message_center = MessageCenter.new
puts message_center.pretty_line
puts message_center.welcome
puts message_center.pretty_line

board = Board.new
puts board.display_top_line.join
print board.display_grid
puts "\n"

puts 'Please choose a column: '
puts "\n"
print '> '
game_center = GameCenter.new
input = gets.chomp
game_center.sanitize(input)
puts "\n"
puts "You've choosen column #{game_center.sanitize(input)}."
puts "\n"
puts message_center.pretty_line
