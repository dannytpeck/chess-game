class Knight < Piece

  def initialize(player)
    @player = player
    @type = "N"
    @display = type + player.to_s
    @moves = []
    
    @moves << [2, -1] << [2, 1] << [-2, -1] << [-2, 1] <<
              [1, -2] << [1, 2] << [-1, -2] << [-1, 2]
  end

end
