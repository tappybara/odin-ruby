class Board

    @@horizontals = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]

    @@verticals = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
    ]

    @@diagonals = [
        [0, 4, 8],
        [2, 4, 6]    
    ]

    def initialize
        @grid = [
            [nil, nil, nil],
            [nil, nil, nil],
            [nil, nil, nil]
        ]
    end

    def is_valid_move(loc, mark)
        row = loc // 3
        col = loc % 3

        unless @grid[row][col].nil?
            puts illegal move
        end

        @grid[row][col] = mark

    end

    def is_winning_move(move)
        return check_diagonals(move) || check_horizontal(move) || check_vertical(move)
    end

    def draw_board

    end

    private

    def get_grid_pos(loc)

    end

    def check_horizontal(loc, mark)
        for horizontal in @@horizontals:
            if horizontal.include? loc
                for pos in horizontal
                    row = loc // 3
                    col = loc % 3

                    return false if @grid[row][col] != mark
                    
                end
            end
        end

        return true
    end

    def check_vertical(loc, mark)
        for vertical in @@verticals:
            if vertical.include? loc
                for pos in vertical
                    row = loc // 3
                    col = loc % 3

                    return false if @grid[row][col] != mark
                    
                end
            end
        end

        return true
    end

    def check_diagonals(loc, mark)
        for diagonal in @@diagonals:
            if diagonal.include? loc
                for pos in diagonal
                    row = loc // 3
                    col = loc % 3

                    if @grid[row][col] != mark
                        break
                    end
                end

                return true
            end
        end

        return false

    end

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