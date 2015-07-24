class King < Piece

  def possible_moves
    moves = []

    moves << [@x + 1, @y] << [@x - 1, @y] << [@x, @y + 1] << [@x, @y - 1] <<
             [@x + 1, @y + 1] << [@x - 1, @y - 1] << [@x + 1, @y - 1] << 
             [@x - 1, @y + 1]

    moves.map { |x| x if is_valid_move?(x) }.compact
  end

  def symbol
    return "K" if self.color == :white
    return "k" if self.color == :black
  end  

end
