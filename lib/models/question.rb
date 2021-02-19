class Question < ActiveRecord::Base
    has_many :userquestions 
    has_many :users, through: :userquestions 

    ## Class methods

    def self.random_excluding(question_array)
        all.excluding(question_array).sample
    end

    def self.authors
        all.map{ |question| question[:right_answer] }.uniq
    end

    ## instance methods
    
    def choices
        choices = Array.new(1, self.right_answer)
        wrong_answers = Question.authors.filter{ |author| author != self.right_answer }.sample(3)
        choices << wrong_answers
        choices.flatten.shuffle
    end
    
    def ask
        puts ("'#{self.quote}'").yellow
    end
    
    def get_answer
        prompt.select("Who wrote it?", self.choices)
    end    
    
end

