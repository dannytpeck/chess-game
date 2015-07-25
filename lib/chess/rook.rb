class Rook < Piece

  def initialize(player)
    @player = player
    @type = "R"
    @display = type + player.to_s
    @moves = []

    8.times do |i|
      @moves << [i, 0] << [-i, 0] << [0, i] << [0, -i]
    end
  end

end
