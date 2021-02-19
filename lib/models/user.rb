class User < ActiveRecord::Base
    has_many :userquestions 
    has_many :questions, through: :userquestions

    def tests_taken
        Test.where(user: self)
    end

    def count_tests 
        tests_taken.length 
    end
    
    def count_correct_tests
        tests_taken.filter{ |test| test.user_correct? }.length
    end
    
    def pct_correct
       # if count_correct_tests > 0
            (self.count_correct_tests.to_f / self.count_tests.to_f * 100).round
       # else 0
       # end        
    end    
    
    def test_history
        puts ("********** TEST HISTORY FOR #{self.name.upcase} **********").blue
        tests_taken.each do |test|
            puts (test.recap).yellow
            puts (test.result).colorize(test.score_color)
            puts ("*****").blue
        end
    end
    
    def score_summary
        puts ("********** SCORE SUMMARY FOR #{self.name.upcase} **********").blue
        puts ("You have taken #{self.count_tests} and answered #{self.count_correct_tests} correctly")
        puts ("You have gotten #{self.pct_correct}% correct!")
    end    

end

   

