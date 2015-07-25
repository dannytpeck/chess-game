class Queen < Piece

  def initialize(player)
    @player = player
    @type = "Q"
    @display = type + player.to_s
    @moves = []

    8.times do |i|
      @moves << [i, i] << [i, -i] << [-i, i] << [-i, -i] <<
                [i, 0] << [-i, 0] << [0, i] << [0, -i]
    end
  end

end
