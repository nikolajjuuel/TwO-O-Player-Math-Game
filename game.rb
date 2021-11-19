class Game 

    def initialize
      @players = []
      @players[0] = Player.new("Player 1")
      @players[1] = Player.new("Player 2")
      @turn = 0
      @game_over = false
    end
  
    def start
      while !@game_over do
        playing = @players[@turn % 2]
        waiting = @players[(@turn + 1) % 2]
  
        new_question = Question.new(playing.name)
        puts "----- NEW TURN -----"
        new_question.sum
        print "> "
        user_input = gets.chomp.to_i
  
        if new_question.validate(user_input)
          puts "Yes! You are correct"
        else
          puts "Seriously? No!"
          playing.lose
          if playing.health == 0 
            @game_over = true
            puts "#{waiting.name} wins with a score of #{waiting.health}/3"
            puts "----- GAME OVER -----"
            puts "Good bye!"
            break
          end
        end
  
        puts "P1: #{@players[0].health}/3 vs P2: #{@players[1].health}/3"
  
        @turn = @turn + 1
      end
  
    end
  
  end