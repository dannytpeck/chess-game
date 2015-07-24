class Bishop < Piece

  def possible_moves
    moves = []

    moves << [@x + 1, @y + 1] << [@x + 2, @y + 2] << [@x + 3, @y + 3] << 
             [@x + 4, @y + 4] << [@x + 5, @x + 5] << [@x + 6, @y + 6] << 
             [@x + 7, @y + 7] << [@x - 1, @y - 1] << [@x - 2, @y - 2] << 
             [@x - 3, @y - 3] << [@x - 4, @y - 4] << [@x - 5, @x - 5] << 
             [@x - 6, @y - 6] << [@x - 7, @y - 7] << [@x + 1, @y - 1] << 
             [@x + 2, @y - 2] << [@x + 3, @y - 3] << [@x + 4, @y - 4] << 
             [@x + 5, @x - 5] << [@x + 6, @y - 6] << [@x + 7, @y - 7] << 
             [@x - 1, @y + 1] << [@x - 2, @y + 2] << [@x - 3, @y + 3] << 
             [@x - 4, @y + 4] << [@x - 5, @x + 5] << [@x - 6, @y + 6] << 
             [@x - 7, @y + 7]

    moves.map { |x| x if is_valid_move?(x) }.compact

  end

  def symbol
    return "B" if self.color == :white
    return "b" if self.color == :black
  end

end
