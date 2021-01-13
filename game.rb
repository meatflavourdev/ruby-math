require './player'
require './question'

class Game

  def initialize()
    @players = [ Player.new("Player 1"), Player.new("Player 2") ]
    @current_player = 0;
    @other_player = 1;
  end

  def start()
    loop do
      # Print question
      question = Question.new
      puts "#{@players[@current_player].name}: #{question.output}"
      # Get input
      answer = gets.chomp
      # Print Correct / Incorrect
      if question.correct?(answer)
        puts "#{@players[@current_player].name}: YES! You are correct."
      else
        puts "#{@players[@current_player].name}: Seriously? No!"
        @players[@current_player].decrement_life
      end
      puts "P1: #{@players[0].get_lives}/3 vs P2: #{@players[1].get_lives}/3"
      if @players[@current_player].get_lives <= 0
        break
      else
        puts '----- NEW TURN -----'
        @current_player = 1 - @current_player
        @other_player = 1 - @other_player
      end
    end
    puts "#{@players[@other_player].name} wins with a score of #{@players[@other_player].get_lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end
end
