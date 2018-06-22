require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      move = rand(1..9) until board.valid_move?(move)
      move.to_i
    end
  end
end
