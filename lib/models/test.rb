class Test < ActiveRecord::Base
    belongs_to :user
    belongs_to :question


    def user_correct?
        self.user_answer == self.question.right_answer ? true : false
    end

    def score_color
        user_correct? ? :green : :red
    end    
    
    def score_response
        self.user_correct? ? "CORRECT" : "INCORRECT"
    end
    
    def recap
        "#{self.question.right_answer} said: '#{self.question.quote}'"
    end 

    def result
        "Your answer: #{self.user_answer} | Result: #{self.score_response}"
    end    

end