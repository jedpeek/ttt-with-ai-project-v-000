require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      until self.board.valid_move()
      rand(9)
    end
    end
  end
end
