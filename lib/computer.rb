class Computer

  def place_computer_piece(player)
    column = i.keys.sample
    place(player, column)
  end

  def place(player, column_index)
    index = 0
    column = grid[i[column_index]]
    until column[index + 1] != '.' || column[index + 1].nil?
      index += 1
    end
    grid[i[column_index]][index] = 'O' if player == 'C'
    grid[i[column_index]][index] = 'X' if player == 'P'
  end

end
