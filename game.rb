require './player.rb'

class MathGame 

    @@players = []

    def initialize
        puts "=== Start ===\n\n"
        @player1 = Player.new(1)
        @player2 = Player.new(2)
        @@players << @player1
        @@players << @player2
    end

    def self.random_questions
        x = Random.rand(100)
        y = Random.rand(100)
        puts "What does #{x} plus #{y} equal?"
        x + y;
    end

    def is_over?
        player = @@players.find { |player| player.dead? }
        return true if player
        false
    end

    def self.all_players
        @@players
    end

    def get_winner
        player = @@players.find { |player| !player.dead? }
        return player.player_num if player
        false
    end

end
