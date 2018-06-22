class Game
  attr_accessor :board, :player_1, :player_2
    WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Mid row
    [6,7,8], # Btm row
    [0,3,6], # L columns
    [1,4,7], # M columns
    [2,5,8], # R columns
    [0,4,8], # R diagonal
    [6,4,2]  # L diagonal
    ]

    def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
      @board = board
      @player_1 = player_1
      @player_2 = player_2
    end

    def board
      @board
    end

    def player_1
      @player_1
    end
    def player_2
      @player_2
    end


  def current_player
    count = 0
    self.board.cells.each do |board|
      if board != " "
        count += 1
      end
      end
      count % 2 == 0 ? "X" : "O"
  end

  def won?
  WIN_COMBINATIONS.each do |win_combo|
    index_1 = win_combo[0]
    index_2 = win_combo[1]
    index_3 = win_combo[2]

    pos_1 = @board[index_1]
    pos_2 = @board[index_2]
    pos_3 = @board[index_3]

    if (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") || (pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
      return win_combo
    else
      return false
  end
end
end



end
