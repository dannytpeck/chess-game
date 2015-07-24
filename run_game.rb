require "lib/chess.rb"

puts "Welcome to Chess - Made in Ruby!"

danny = Player.new({name: "Danny", color: :black})
lydia = Player.new({name: "Lydia", color: :white})

Game.new([danny, lydia]).play
