require_relative 'config/environment'

def gets_name
    puts "Welcome, what is your name?"
    user_name = gets.chomp
    User.create name: user_name
    puts "Hi, #{user_name}"
end

def serve_question
    user_question = Question.all.sample
    puts user_question[:quote]
end


def generate_choices(right_answer)
    choices = []
    authors = ["Virginia Woolf", "Toni Morrison", "Amy Tan", "Leslie Marmon Silko", "Dorothy Parker", "Maya Angelou", "Barbara Kingsolver", "Jane Austen"]
    wrong_authors = authors.filter{ |author| author != right_answer }.sample(3)
    choices << wrong_authors << right_answer
    choices.flatten.shuffle 
end    


## main runner
gets_name
serve_question

# binding.pry

# Cli.new.start_game



