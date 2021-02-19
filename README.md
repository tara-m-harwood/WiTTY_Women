# WiTTY Women
## When you think about legendary writers, are you missing half the story?
### Take our quote quiz to find out!

=======
# WiTTY Women
> Where you can test your literary knowledge and expand your horizons!

## Table of contents
* [General info](#general-info)
* [Intro Video](#intro-video)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)

## General info
WiTTY_Women is a CLI application that allows users to create a profile and test their literary knowledge of some legendary female writers. Upon opting to take the quiz, users will be shown a thought provoking quote and must select the correct author. They will then have the option to see their score and choose to take the quiz again to build upon their knowledge or exit the program. The user can choose to view their saved cumulative score before exiting the program.

## Intro Video
[WiTTY Women on YouTube](https://www.youtube.com/TBD)

## Technologies
* Ruby - version 2.6.6
* ActiveRecord - version 6.0.1
* Artii - version 2.1.2
* Colorize version 0.8.1
* Sinatra - version 2.0.7
* Sinatra-activerecord - version 2.0.14
* SQLite3 - version 1.4.1
* TTY-prompt version 0.23.0

## Setup
To run this project, install it locally by cloning the GitHub repository. 

Before loading the program run:
* bundle install 
* rake db:migrate
* rake db:seed

To run program type: ruby runner.rb

## Code Examples

main runner

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

give_test with helper functions
    
    def tests_taken
        Test.where(user: self)
    end

    def questions_asked
        self.tests_taken.map{ |test| test.question}
    end 
    
    def recent_questions (num)
        self.questions_asked.last(num)
    end   

    def give_test
        question = Question.random_excluding(self.recent_questions(3))
        question.ask
        answer = question.get_answer
        Test.create user: self, question: question, user_answer: answer
    end

## Features
* Take a quiz from a selection of quotes from prominent female authors!
* See your score and continue to build your knowlege!

## To-do list
* Add an option for users to save their log-in information for repeat visits
* Compare your score to other users
* Build bank of writers and quotes 
* Add a randomized quote feature
* Ability to save quotes to user profile

## Status
* Project is completed with potential to expand functionality and DRY out code.

## Inspiration
* Our goal is to share these words of wisdom and engage users to awknowledge the women responsible for this inspiration! Our hope is to provide an interactive application that helps our users expand their knowlege. 

### Created by Tara Harwood and Marnie Robinson
Feel free to reach out!
