class User < ActiveRecord::Base
    has_many :userquestions 
    has_many :questions, through: :userquestions
end