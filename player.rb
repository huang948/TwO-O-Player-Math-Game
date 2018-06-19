class Player

    attr_accessor :player_num, :lives

    def initialize(num)
        @player_num = num
        @lives = 3
    end

    def self.addPlayer(player)
        @@players << player
    end

    def dead?
        self.lives <= 0
    end

    def make_move(answer, value)
        if answer == value
            puts "YES! You are correct."
        elsif answer != value
            self.lives -= 1
            puts "Seriously? No!"
        end
    end

end