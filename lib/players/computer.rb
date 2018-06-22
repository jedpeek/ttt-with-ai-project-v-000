require 'player.rb'
module Players
  class Computer < Player

    def move(board)
      #move = [1,2,3,4,5,6,7,8,9].detect{|i| !board.taken?(i)}.to_s
      move = rand(1..9).to_s
      until board.valid_move?(move)
        move(board)
    end
    move
  end
  end
end
