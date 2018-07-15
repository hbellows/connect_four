class GameCenter

  def sanitize(input)
    clean_input = input.upcase
  end

  def input_valid?(clean_input)
    acceptable_input = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    acceptable_input.include?(clean_input)
    # require "pry"; binding.pry
  end

  def validate_input(clean_input)
    if input_valid?(clean_input)
      "You have choosen column #{clean_input}."
    else
      'The letter you have entered is invalid.  Please enter a letter from "A" to "G".'
    end
  end



end
