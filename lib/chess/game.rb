class Game
  attr_reader :players, :board, :current_player, :other_player

  def initialize(players, board = Board.new)
    @players = players
    @board = board
    @current_player, @other_player = players.shuffle
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def solicit_move
  end

  def get_move(human_move = gets.chomp)
  end

  def game_over_message
  end

  def play
  end

  private

  def human_move_to_coordinate(human_move)
  end

end
