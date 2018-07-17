class WinSolution

  def player_win?
   if player_diagonal_win? || player_vertical_win? || player_horizontal_win?
     return true
   end
 end

 def player_vertical_win?
   grid.each do |col|
     (0..3).each do |idx|
       won = col[idx..(idx + 3)].all? { |cell| cell == 'X' && cell != '.' }
       return true if won
     end
   end
   return false
 end

 def player_horizontal_win?
   grid.each do |col|
     (0..3).each do |idx|
       won = [grid[idx][idx], grid[idx+1][idx], grid[idx+2][idx], grid[idx+3][idx]]
       if won.all? {|cell| cell=='X'}
         return true
       else
         return false
       end

     end
   end
 end

 def player_diagonal_win?
   diagonal = []
   grid.each_index do |index|
     (0..3).each do |idx|
       diagonal << [grid[idx][idx], grid[idx+1][idx+1], grid[idx+2][idx+2], grid[idx+3][idx+3]]
       diagonal << [grid[idx][idx], grid[idx-1][idx+1], grid[idx-2][idx+2], grid[idx-3][idx+3]]
     end
   end
   diagonal.any? do |line|
     line.all? {|cell| cell=='X'}
   end
 end

 def computer_win?
   if computer_diagonal_win? || computer_vertical_win? || computer_horizontal_win?
     return true
   end
 end

 def computer_vertical_win?
   grid.each do |col|
     (0..3).each do |idx|
       won = col[idx..(idx + 3)].all? { |cell| cell == 'O' && cell != '.' }
       return true if won
     end
   end
   return false
 end

 def computer_horizontal_win?
   connect = 0
   grid.each do |col|
     (0..3).each do |idx|
       won = [grid[idx][idx], grid[idx+1][idx], grid[idx+2][idx], grid[idx+3][idx]]
       if won.all? {|cell| cell=='O'}
         return true
       else
         return false
       end
     end
   end
 end

 def computer_diagonal_win?
   diagonal = []
   grid.each_index do |index|
     (0..3).each do |idx|
       diagonal << [grid[idx][idx], grid[idx+1][idx+1], grid[idx+2][idx+2], grid[idx+3][idx+3]]
       diagonal << [grid[idx][idx], grid[idx-1][idx+1], grid[idx-2][idx+2], grid[idx-3][idx+3]]
     end
   end
   diagonal.any? do |line|
     line.all? {|cell| cell=='O'}
   end
 end
end
