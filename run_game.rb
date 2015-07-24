require "./lib/chess.rb"

puts "Welcome to Chess - Made in Ruby!"

danny = Player.new({name: "Danny", color: :white})
lydia = Player.new({name: "Lydia", color: :black})

Game.new([danny, lydia]).play
