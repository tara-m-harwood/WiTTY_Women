
require_relative 'config/environment'

def prompt
    TTY::Prompt.new
end

def welcome_banner
    banner = Artii::Base.new(:font => "slant")
    puts banner.asciify("WiTTY Women").blue
    puts ("When you think about legendary writers, are you missing half the story?").blue
end

def gets_name
    user_name = prompt.ask("What is your name?")
    User.create name: user_name
    puts "Welcome, #{user_name}! Would you like to test your literary knowledge?"
end

def wants_quiz
    prompt.select("Select an option:", ["Yes, show me a quote!","Exit"])
end    

# main runner
welcome_banner
gets_name
menu_choice = wants_quiz
    if menu_choice == "Exit"
        puts "Goodbye! See you next time!"
        exit
    else    
        for i in 1..3
            user_question = Question.random
            puts ("*********").blue
            puts ("'#{user_question.quote}'").yellow
            user_choice = prompt.select("Who wrote it?",user_question.choices)
            puts ("*********").blue
            if user_choice == user_question.right_answer
                puts ("CORRECT! This is a quote by #{user_question.right_answer}!").green
            else
                puts ("Sorry! This was actually written by #{user_question.right_answer}!").red
            end        
        end    
    end    


#binding.pry
#0



