class Question 
    def initialize(player_name)
      @player_name = player_name
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @result = @num1 + @num2
    end
  
    def sum
      puts "#{@player_name}: What does #{@num1} plus #{@num2} equal?"
    end
  
    def validate(user_input)
      user_input == @result
    end
  end