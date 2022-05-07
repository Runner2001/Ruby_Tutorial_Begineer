class TicTacToe
    attr_accessor :board, :players, :current_player, :size
    def initialize
        @size = 3
        @board = [nil] * (size ** 2)
        @players = []
    end

    def start
        if players.length != 2
            raise StandardError, "Two player need to play a game"
        end

        @current_player = players.first

        render
        until (win? || draw?) do
            get_input
            render
            switch_player
        end
        if (winner = win?)
            puts "Con Con You Win #{winner.name}"
        else
            puts "It is draw"
        end
    end

    def switch_player
        @current_player = (current_player == players.first) ? players.last : players.first
    end

    def get_input
        loop do
            puts "#{current_player.name} where you like to go? [1-9]"
            location = gets.chomp.to_i

            if board[location-1] == nil
                board[location-1] = current_player
                break
            else
                puts "This sport is already taken"
            end
        end

    end

    def win?
        row = [board[0], board[1], board[2]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[3], board[4], board[5]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[6], board[7], board[8]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[0], board[3], board[6]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[1], board[4], board[7]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[2], board[5], board[8]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[0], board[4], board[8]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

        row = [board[2], board[4], board[6]].compact
        return row.first if row.length == 3 && row.all?{ |r| r == row.first}

    end

    def draw?
        return board.none?(nil) && !win?
    end

    def render
        puts

        board.each_slice(3).with_index do |row, index|
            puts "---------" if index != 0
            puts row.map{ |index| mark(index)}.join(" | ")
        end

        puts
    end

    def mark(index)
        index&.mark || " "
    end

    def add_player(name = nil)
        mark = players.empty? ? "X" : "O"
        if name == nil
            puts "Enter Your Name"
            name = gets.chomp
        end
        players << Player.new(name, mark)
    end

end

class Player
    attr_accessor :name, :mark
    def initialize(name, mark)
        @name, @mark = name, mark
    end
end


game = TicTacToe.new
game.add_player
game.add_player
game.start