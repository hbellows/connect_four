class GameCenter

  include MessageCenter

  def initialize
    @board = Board.new
  end

  def sanitize(input)
    cleaned_input = input.upcase
  end

  def input_valid?(cleaned_input)
    acceptable_input = @board.grid.keys
    acceptable_input.include?(cleaned_input)
  end

  def validate_input(cleaned_input)
    if input_valid?(cleaned_input)
      "You have choosen column #{cleaned_input}."
    else
      #can I run a validation loop here?

    end
  end

  def validation_loop
    unless input_valid?(cleaned_input)
      invalid_enrty
  end



end
