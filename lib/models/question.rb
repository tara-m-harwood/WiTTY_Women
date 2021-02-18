class Question < ActiveRecord::Base
    has_many :userquestions 
    has_many :users, through: :userquestions 
end 