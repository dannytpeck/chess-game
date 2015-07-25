class Piece
  attr_reader :player, :type, :display, :moves, :special_moves
  attr_accessor :cell, :notation

  def initialize
    @cell = []
  end

  def valid_move?(move)
    return @moves.include?(move)
  end

  def update
  end

end
