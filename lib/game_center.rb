class GameCenter

  def sanitize(input)
    input.upcase
  end

  def input_valid?(input)
    if input.include?(('a'..'g'))
      true
    end
  end

end
