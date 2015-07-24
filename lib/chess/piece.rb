class Piece
  attr_accessor :x, :y, :color

  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def is_valid_move?(location)
    location[0] >= 0 && location[1] >= 0 && location[0] < 8 && location[1] < 8
  end

end