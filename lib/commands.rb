module Commands

  def i
    {
      'A' => 0,
      'B' => 1,
      'C' => 2,
      'D' => 3,
      'E' => 4,
      'F' => 5,
      'G' => 6
    }
  end

  def yes_commands(input)
    %w[Y YES].include?(input)
  end

  def no_commands(input)
    %w[N NO].include?(input)
  end

  def quit_commands(input)
    %w[Q QUIT].include?(input)
  end
end
