class Game
  attr_reader :players, :board, :current_player, :other_player

  def initialize(players, board = Board.new)
    @players = players
    @board = board
    if players[0].color == :white
      @current_player, @other_player = players
    else
      @current_player, @other_player = players[1], players[0]
    end
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def solicit_from_move
    "#{current_player.name} - Select an x and y coordinate for the piece you wish to move. (ex: 3 3)"
  end

  def solicit_to_move
    "#{current_player.name} - Select an x and y coordinate for where you wish to move the piece. (ex: 3 3)"
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
    puts "#{current_player.name} is playing white and goes first."
    loop do
      board.draw_board # Display board
      puts ""
      puts solicit_from_move
      x1, y1 = get_move

      if board.get_square(x1, y1).value == ""
        puts "There's no piece in that square!"
        next
      end

      moving_piece = board.get_square(x1, y1).value

      if moving_piece.color != current_player.color
        puts "You can only move your own pieces!"
        next
      end

      puts solicit_to_move
      x2, y2 = get_move

      if !moving_piece.possible_moves.include?([x2, y2])
        puts "That piece can't be moved there!"
        next
      end

      if board.get_square(x2, y2).value != ""
        if board.get_square(x2, y2).value.color == current_player.color
          puts "One of your pieces is already occupying that square!"
          next
        end

        # if enemy piece in square, do capture
        if board.get_square(x2, y2).value.color == other_player.color
          puts "#{board.get_square(x2, y2).value.class} captured!"
        end
      end

      # move piece to new square
      moving_piece.x = x2
      moving_piece.y = y2
      board.get_square(x2, y2).value = moving_piece
      board.empty_square(x1, y1)

      switch_players
      
    end
  end

end
