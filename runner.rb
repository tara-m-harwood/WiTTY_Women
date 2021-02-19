
require_relative 'config/environment'

def prompt
    TTY::Prompt.new
end

def welcome_banner
    banner = Artii::Base.new(:font => "slant")
    puts banner.asciify("WiTTY Women").blue
    puts ("When you think about legendary writers, are you missing half the story?").blue
end

def prompt_to_create_user
    user_name = prompt.ask("What is your name?")
    User.create name: user_name
end  

# main runner
welcome_banner
user = prompt_to_create_user
user.greeting
loop do
    if user.wants_quiz?
        user.administer_quiz
        if user.wants_scores?
             user.show_scores
        end    
    else
        user.goodbye
        break
    end
end            

binding.pry
0