class Question
    def initialize
        @first_num = rand(1..20)
        @second_num = rand(1..20)
        @answer = (@first_num + @second_num).to_s
    end

    def print_question
        puts "What is #{@first_num} + #{@second_num}?"
        puts "**answer should be #{@answer}**"
    end

    def is_correct?(input)
        if input == @answer
            return true
        else
            return false
        end
    end

end
