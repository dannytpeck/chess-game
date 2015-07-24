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

  def solicit_from_move
    "Select an x and y coordinate for the piece you wish to move. (ex: 3 3)"
  end

  def solicit_to_move
    "Select an x and y coordinate for where you wish to move the piece. (ex: 3 3)"
  end

  def get_move
    move = []
    loop do
      input = gets.chomp.split(' ')
      x = input[0].to_i
      y = input[1].to_i
      if x < 0 || x > 7 || y < 0 || y > 7
        puts "Invalid selection. Type two numbers between 0 and 7 with a space between them. (ex: 3 3)"
      else
        move << x << y
        break
      end
    end
    move
  end

  def game_over_message
  end

  def play
    board.draw_board
    puts solicit_from_move
    move_from = get_move
    puts solicit_to_move
    move_to = get_move
  end

  private

  def human_move_to_coordinate(human_move)
  end

end
