class Player 
    def initialize name
        @name = name
        @health = 3
    end
    attr_accessor :name, :health

    def lose 
        self.health -= 1
    end
end