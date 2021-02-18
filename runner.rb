
require_relative 'config/environment'

def prompt
    TTY::Prompt.new
end

def welcome_banner
    banner = Artii::Base.new(:font => "slant")
    puts banner.asciify("WiTTY Women").blue
end

def gets_name
    user_name = prompt.ask("What is your name?")
    User.create name: user_name
    puts "Welcome, #{user_name}! Would you like to test your literary knowledge?"
end


# main runner
welcome_banner
gets_name
user_question = Question.random
puts user_question.quote
user_choice = prompt.select("Who wrote it?",user_question.choices)
puts "The correct answer is #{user_question.right_answer}"


#binding.pry
#0



