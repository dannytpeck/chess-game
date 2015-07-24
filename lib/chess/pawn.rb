class Pawn < Piece

  def possible_moves
    moves = []

    moves << [@x + 1, @y] << [@x - 1, @y] << [@x, @y + 1] << [@x, @y + 2] <<
             [@x, @y - 1] << [@x + 1, @y + 1] << [@x - 1, @y - 1] << 
             [@x + 1, @y - 1] << [@x - 1, @y + 1]

    moves.map { |x| x if is_valid_move?(x) }.compact
  end

  def symbol
    return "P" if self.color == :white
    return "p" if self.color == :black
  end

end