class Question < ActiveRecord::Base
    has_many :userquestions 
    has_many :users, through: :userquestions 

    ## class methods

    def self.random #returns a random question
        all.sample
    end

    def self.authors #returns an array of unique author values from :right_answer
        all.map{ |question| question[:right_answer] }.uniq
    end

    ## instance methods
    
    def choices #returns a randomized array of one correct author and 3 wrong ones
        choices = Array.new(1, self.right_answer)
        wrong_answers = Question.authors.filter{ |author| author != self.right_answer }.sample(3)
        choices << wrong_answers
        choices.flatten.shuffle
    end    

end

