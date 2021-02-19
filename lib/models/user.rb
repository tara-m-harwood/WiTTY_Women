class User < ActiveRecord::Base
    has_many :userquestions 
    has_many :questions, through: :userquestions

    def all_tests
        tests_taken = Test.where(user: self)
    end
    
    def test_history
        puts ("********** QUESTION HISTORY FOR #{self.name.upcase} **********").blue
        all_tests.each do |test|
            puts ("#{test.question.right_answer} wrote: '#{test.question.quote}'").yellow
            if test.user_answer == test.question.right_answer
                puts ("Your answer: #{test.user_answer} | Result: CORRECT").green
            else
                puts ("Your answer: #{test.user_answer} | Result: INCORRECT").red
            end
            puts ("*****").blue
        end
    end
    
    def score_summary
        number_tests = self.all_tests.length
        correct_tests = self.all_tests.filter{ |test| test.user_answer == test.question.right_answer }.length
        correct_pct = (correct_tests.to_f / number_tests.to_f * 100).round
        puts ("You have taken #{number_tests} tests and answered #{correct_tests} correctly").blue
        puts ("You have gotten #{correct_pct}% correct!").blue
    end    


end

   

