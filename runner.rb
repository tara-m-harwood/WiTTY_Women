require_relative 'config/environment'

def gets_name
    puts "Welcome, what is your name?"
    user_name = gets.chomp
    User.create name: user_name
    puts "Hi, #{user_name}"
end


# main runner
gets_name
user_question = Question.random
puts user_question.quote
puts user_question.choices


#binding.pry
#0



