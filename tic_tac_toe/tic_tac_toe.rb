class Board

    LINES = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]    
    ]
:while
    def initialize
        @grid = [
            [nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]
        ]
        @moves = 0
    end

    def record_move(loc, mark)
        row = loc // 3
        col = loc % 3

        unless @grid[row][col].nil?
            puts illegal move
        end

        @grid[row][col] = mark
        @moves += 1
    end

    def is_winning_move(loc, m)


    def draw_board
        col_separator, row_separator = " | ", "--+---+--"
        label_for_position = lambda{|position| @board[position] ? @board[position] : position}
      
        row_for_display = lambda{|row| row.map(&label_for_position).join(col_separator)}
        row_positions = [[0,1,2], [3,4,5], [6,7,8]]
        rows_for_display = row_positions.map(&row_for_display)
        puts rows_for_display.join("\n" + row_separator + "\n")
    end

    private

    check


end

class Player
    def initialize(mark)
        @mark = mark
    end
end

class Game
    def initialize
        board = Board.new()
        playerA = Player.new('X')
        playerB = Player.new('O')
    end

    def start_game

    end

end