require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      move = rand(9)
      until self.board.valid_move(
    end
  end
end
