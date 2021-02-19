class User < ActiveRecord::Base
    has_many :userquestions 
    has_many :questions, through: :userquestions

    def tests_taken
        Test.where(user: self)
    end

    def questions_asked
        Test.where(user: self).map{ |test| test.question}
    end

    def count_tests 
        tests_taken.length 
    end
    
    def count_correct_tests
        tests_taken.filter{ |test| test.user_correct? }.length
    end
    
    def pct_correct
       (self.count_correct_tests.to_f / self.count_tests.to_f * 100).round   
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
    
    ### related to the main runner flow

    def greeting
        puts "Welcome, #{self.name}!"
    end

    def wants_quiz?
        choices = { "Yes, show me 3 quotes!"=> true, "Exit"=> false }
        prompt.select("Would you like to test your literary knowledge?", choices)
    end

    def wants_scores?
        choices = { "Yes, show my scores!"=> true, "No"=> false }
        prompt.select("Do you want to see your score summary", choices)
    end
    
    def administer_quiz
        for i in 1..3
            puts ("**********************").blue
            user_test = self.give_test
            if user_test.user_correct?
                puts ("---> CORRECT! This is a quote by #{user_test.question.right_answer}!").green
            else
                puts ("---> Sorry! This was actually written by #{user_test.question.right_answer}!").red
            end    
        end
        puts ("**********************").blue            
    end
    
    def give_test
        question = Question.random([])
        question.ask
        answer = question.get_answer
        Test.create user: self, question: question, user_answer: answer
    end
    
    def goodbye
        puts "Goodbye! See you next time!"
    end    


end

   

