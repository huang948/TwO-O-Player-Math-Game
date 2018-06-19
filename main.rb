require './game.rb'

game = MathGame.new()
players = MathGame.all_players

until game.is_over?
    players.each_with_index do |player, index|
        puts "Player#{player.player_num}"
        answer = MathGame.random_questions()
        value = gets.chomp
        player.make_move(answer, value)
        break if game.is_over?
        puts "P1: #{players[0].lives}/3 vs P2: #{players[1].lives}/3"
        puts "----- NEW TURN -----"
    end
end

puts "Thanks for playing"
puts "Player#{game.get_winner} is the winner"


