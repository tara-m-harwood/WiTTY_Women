class User < ActiveRecord::Base
    has_many :userquestions 
    has_many :questions, through: :userquestions

    def all_tests
        tests_taken = Test.where(user: self)
    end
    
    def score_history
        correct = 0
        all_tests.each do |test|
            puts "Quote: #{test.question.quote}"
            puts "Your answer: #{test.user_answer}"
            puts "Correct answer: #{test.question.right_answer}"
            if test.user_answer == test.question.right_answer
                puts ("CORRECT").green
            else
                puts ("INCORRECT").red
            end
            puts ("*****").blue
        end
    end               

end

   

