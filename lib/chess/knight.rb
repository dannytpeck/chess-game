class Knight < Piece

  def possible_moves
    moves = []

    moves << [@x + 1, @y + 2] << [@x - 1, @y + 2] << [@x + 2, @y + 1] << [@x + 2, @y - 1] << 
             [@x - 2, @y + 1] << [@x - 2, @y - 1] << [@x + 1, @y - 2] << [@x - 1, @y - 2]

    moves.map { |x| x if is_valid_move?(x) }.compact
  end

  def symbol
    return "N" if self.color == :white
    return "n" if self.color == :black
  end
  
end
