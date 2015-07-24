class Rook < Piece

  def possible_moves
    moves = []
             # horizontals
    moves << [@x + 1, @y] << [@x + 2, @y] << [@x + 3, @y] << [@x + 4, @y] << 
             [@x + 5, @y] << [@x + 6, @y] << [@x + 7, @y] << [@x - 1, @y] << 
             [@x - 2, @y] << [@x - 3, @y] << [@x - 4, @y] << [@x - 5, @y] << 
             [@x - 6, @y] << [@x - 7, @y] << 
             # verticals
             [@x, @y + 1] << [@x, @y + 2] << [@x, @y + 3] << [@x, @y + 4] << 
             [@x, @y + 5] << [@x, @y + 6] << [@x, @y + 7] << [@x, @y - 1] << 
             [@x, @y - 2] << [@x, @y - 3] << [@x, @y - 4] << [@x, @y - 5] << 
             [@x, @y - 6] << [@x, @y - 7]

    moves.map { |x| x if is_valid_move?(x) }.compact

  end

  def symbol
    return "\u2656" if self.color == :white
    return "\u265C" if self.color == :black
  end

end
