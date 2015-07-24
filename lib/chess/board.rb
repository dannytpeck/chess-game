class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) { Square.new } }
    place_pieces
  end

  def get_square(x, y)
    grid[y][x]
  end

  def set_square(x, y, value)
    get_square(x, y).value = value
  end

  def check
  end

  def check_mate
  end

  def draw_board
    grid.each do |row|
      puts row.map { |square| square.value == "" ? "_" : square.value.symbol }.join(" ")
    end
  end

  def place_pieces
    set_square(0, 0, Rook.new(  0, 0, :black))
    set_square(1, 0, Knight.new(1, 0, :black))
    set_square(2, 0, Bishop.new(2, 0, :black))
    set_square(3, 0, Queen.new( 3, 0, :black))
    set_square(4, 0, King.new(  4, 0, :black))
    set_square(5, 0, Bishop.new(5, 0, :black))
    set_square(6, 0, Knight.new(6, 0, :black))
    set_square(7, 0, Rook.new(  7, 0, :black))
    set_square(0, 1, Pawn.new(  0, 1, :black))
    set_square(1, 1, Pawn.new(  1, 1, :black))
    set_square(2, 1, Pawn.new(  2, 1, :black))
    set_square(3, 1, Pawn.new(  3, 1, :black))
    set_square(4, 1, Pawn.new(  4, 1, :black))
    set_square(5, 1, Pawn.new(  5, 1, :black))
    set_square(6, 1, Pawn.new(  6, 1, :black))
    set_square(7, 1, Pawn.new(  7, 1, :black))

    set_square(0, 6, Pawn.new(  0, 6, :white))
    set_square(1, 6, Pawn.new(  1, 6, :white))
    set_square(2, 6, Pawn.new(  2, 6, :white))
    set_square(3, 6, Pawn.new(  3, 6, :white))
    set_square(4, 6, Pawn.new(  4, 6, :white))
    set_square(5, 6, Pawn.new(  5, 6, :white))
    set_square(6, 6, Pawn.new(  6, 6, :white))
    set_square(7, 6, Pawn.new(  7, 6, :white))    
    set_square(0, 7, Rook.new(  0, 7, :white))
    set_square(1, 7, Knight.new(1, 7, :white))
    set_square(2, 7, Bishop.new(2, 7, :white))
    set_square(3, 7, Queen.new( 3, 7, :white))
    set_square(4, 7, King.new(  4, 7, :white))
    set_square(5, 7, Bishop.new(5, 7, :white))
    set_square(6, 7, Knight.new(6, 7, :white))
    set_square(7, 7, Rook.new(  7, 7, :white))
  end

end
