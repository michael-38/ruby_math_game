require_relative 'player'
require_relative 'question'

puts ""
puts "Welcome to RubyRubyRuby"
puts ""

# Generate players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# turn 0 = Player1's turn, turn 1 = Player2's turn
turn = 0

# change to false when either player has 0 lives remaining
continue_game = true

puts "-- Let's Begin --"

while continue_game

# Generate question
    if (player1.lives == 0) 
        puts "--- Game Over ---"
        puts "Player 2 wins"
        continue_game = false
    elsif (player2.lives == 0)
        puts "--- Game Over ---"
        puts "Player 1 wins"
        continue_game = false
    else 
        puts "--- New Turn ---"
        if (turn == 0)
            print "Player 1: "
        else 
            print "Player 2: "
        end
        new_question = Question.new
        new_question.print_question 
        player_answer = gets.chomp

        # Check if answer is correct
        # If correct, correct_answer += 1
        # If incorrect, lives -= 1
        # If turn = 0, turn += 1
        # If turn = 1, turn -= 1
        if (new_question.is_correct?(player_answer) && turn == 0)
            player1.add_score
            turn += 1
        elsif (new_question.is_correct?(player_answer) && turn == 1)
            player2.add_score
            turn -= 1
        elsif (!(new_question.is_correct?(player_answer)) && turn == 0)
            player1.lose_life
            turn += 1       
        elsif (!(new_question.is_correct?(player_answer)) && turn == 1)
            player2.lose_life
            turn -= 1        
        end
        
        puts ""
        player1.display_status
        player2.display_status
        puts ""

    end
end

