class Player
    attr_reader :lives
    def initialize(name)
        @name = name
        @lives = 3
        @correct_answers = 0
    end

    def add_score
        @correct_answers += 1
        puts "You're right"
    end

    def lose_life
        @lives -= 1
        puts "You suck cuz that's wrong"
    end

    def display_status
        puts "#{@name} with #{@lives} lives remaining"
    end


end
