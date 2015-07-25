class King < Piece

  def initialize(player)
    @player = player
    @type = "K"
    @display = type + player.to_s
    @moves = []
    
    @moves << [0, 1] << [0, -1] << [1, 0] << [-1, 0] <<
              [1, 1] << [1, -1] << [-1, 1] << [-1, -1]
  end

end
