class Player
  attr_reader :moves

  def initialize
    @moves = []
  end

  def saved_moves(valid_move)
    @moves << valid_move
  end


end
