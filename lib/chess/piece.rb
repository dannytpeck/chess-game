class Piece
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def is_valid_move?(location)
    location[0] >= 0 && location[1] >= 0 && location[0] < 8 && location[1] < 8
  end

end