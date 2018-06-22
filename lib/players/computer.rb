require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      move = rand(9) until valid_move(move)
    end
  end
end
