require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      move = rand(1..9).to_s
      until board.valid_move?(move)
        move(board)
    end
    move
  end
  end
end
