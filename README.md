# WiTTy Women
## When you think about legendary writers, are you missing half the story?
### Take the quote quiz to find out!

=======
# WiTTy Women
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
WiTTy_Women is a CLI application that allows users to create a profile and test their literary knowledge of some legendary female writers. Upon opting to take the quiz, users will be shown a thought provoking quote and must select the correct author. They will then be able to see their score and choose to take the quiz again to build upon their knowledge or exit the program. 

## Intro Video
[WiTTY Women on YouTube](https://www.youtube.com/TBD)

## Technologies
* Ruby - version 2.6.6
* ActiveRecord - version 6.0.1
* Sinatra - version 2.0.7
* Sinatra-activerecord - version 2.0.14
* SQLite3 - version 1.4.1

## Setup
To run this project, install it locally by cloning the GitHub repository and typing:
```ruby
ruby config/environment.rb
```

## Code Examples

def self.get_taco_details(taco)
    returned_taco = Taco.find_by(name: taco)
    puts "Name: " + returned_taco.name + " Taco"
    puts "Protein: " + returned_taco.protein
    puts "Heat Level: " + returned_taco.heat_level.to_s
    puts "Shell Type: " + returned_taco.shell_type
end
def self.update_user_name(user_name)
    old_name = User.find_by(name: user_name)
    puts "What is your new name friend?"
    user_input = gets.chomp
    old_name.update(name: user_input)
    user_input
end

Features
Option to take quiz or exit program
Three randomized quotes provided with choices of authors to select
Correct or incorrect answers noted after each quote question with correct answer provided
Final Score provided based upon answers
Upon completion of quiz, option to take new quiz or exit program

To-do list
Refactor and streamline code
Add API functionality to return a recipe for chosen taco

Status
Project is completed with potential to expand functionality and DRY out code.

Inspiration
Our goal was to share these words of wisdom and engage users to awknowledge the women responsible for this inspiration! Our hope was to build an interactive application that helped our users expand their knowlege. 

Created by Tara Harwood and Marnie Robinson

Feel free to contact us!!
