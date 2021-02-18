# WiTTy Women
## When you think about legendary writers, are you missing half the story?
### Take the quiz to find out!

=======
# WiTTy Women
> Test your literary knowledge and expand your horizons!

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
WiTTy_Women is a CLI application that allows users to create a profile and test their literary knowledge of some legendary female writers. Users will be shown a thought provoking quote and must choose the correct author. They will then be able to save their score or choose to take the quiz again to build upon their knowledge. 

## Intro Video
[TacoLandia on YouTube](https://www.youtube.com/watch?v=qxT1I0RSelE)

## Technologies
* Ruby - version 2.6.6
* ActiveRecord - version 5.2
* Sinatra - version 2.0
* Sinatra-activerecord - version 2.0
* SQLite3 - version 1.4

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
Browse tacos by protein type
Return a random taco from the database
See taco details
Save tacos to favorites list
Remove tacos from favorites list
Take the Taco Compatibility Quiz
To-do list:

Refactor “code smell”
Add API functionality to return a recipe for chosen taco
Discover local restaurants serving tacos
Integrate matching photos to tacos
Status
Project is: finished with option to expand functionality and DRY out code.

Inspiration
The inspiration for TacoLandia came from a restaurant API that did not return the information we were looking for. Using our own love of tacos, we set out to build a fun, interactive, and clean UX/UI that would bring other users joy!

Contact
Created by Catherine O'Hara and Taylor Stein

Feel free to contact us!!! 🌮

License
Click to view
