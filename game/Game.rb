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

        # Horizontal
        board.each_slice(size) do |slice|
            row = slice.compact
            return row.first if wining_row?(row)
        end

        # Vertical
        size.times do |i|
            row = []
            size.times do |j|
                index = i + (j * size) 
                row << board[index]
            end
            return row.first if wining_row?(row)
        end

        # First Diagonals
        row = []
        size.times do |i|
            index = (size * i) + i 
            row << board[index]
        end
        return row.first if wining_row?(row)

        # Second Diagonals
        row = []
        size.times do |i|
            index = (size * (i + 1)) - (i + 1)
            row << board[index]
        end
        return row.first if wining_row?(row)

    end

    def draw?
        return board.none?(nil) && !win?
    end

    def wining_row?(row)
        row.length == size && row.all?{ |r| r == row.first}
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