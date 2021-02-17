require_relative 'config/environment'

def gets_name
    puts "Welcome, what is your name?"
    user_name = gets.chomp
    User.create name: user_name
    puts "Hi, #{user_name}"
end

gets_name







binding.pry

# Cli.new.start_game



