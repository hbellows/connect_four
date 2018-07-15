require './lib/message_center'
require './lib/board'

class GameCenter

  include MessageCenter
  include Board

  def player_one_turn
    player_one_greeting
    input = gets.chomp
    # puts "\n"
    cleaned_input = sanitize(input)
    input_valid?(cleaned_input)
    validation_loop(cleaned_input)
    validate_input(cleaned_input)
  end

  def sanitize(input)
    cleaned_input = input.upcase
  end


  def input_valid?(cleaned_input)
    acceptable_input = grid.keys
    acceptable_input.include?(cleaned_input)
  end

  def validation_loop(cleaned_input)
    unless input_valid?(cleaned_input)
      invalid_entry
      player_one_turn
    end
  end

  def validate_input(cleaned_input)
    if input_valid?(cleaned_input)
      valid_entry
    end
  end
end
