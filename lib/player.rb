class Player
  attr_reader :moves

  def initialize
    @moves = []
  end

  def place_player(player, input=nil)
    input = gets.chomp.upcase
    print '> '
    exit_message if quit_commands(input)
    validation_loop(player, input)
  end

  def input_valid?(input)
    return true if i.keys.include?(input)
  end

  def validation_loop(player, input)
    unless input_valid?(input)
      puts 'Please choose a letter between A and G'
      place_player(player, input)
    end
    place(player, input)
  end 


end
