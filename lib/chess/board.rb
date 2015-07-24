class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) { Square.new } }
  end

end

class Square
  attr_accessor :value

  def initialize(value = "")
    @value = value
  end

end