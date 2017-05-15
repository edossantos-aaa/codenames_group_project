# _Codenames board game_

#### _Group Project week 5 Ruby_

#### By _**Zach Beecher, Max Reichman, Peter Karellas**_

## Description

_Codenames board game Two rival spymasters know the secret identities of 25 agents. Their teammates know the agents only by their CODENAMES.

In Codenames, two teams compete to see who can make contact with all of their agents first. Spymasters give one-word clues that can point to multiple words on the board. Their teammates try to guess words of the right color while avoiding those that belong to the opposing team. And everyone wants to avoid the assassin.

Codenames: Win or lose, it's fun to figure out the clues.-_

## Setup/Installation Requirements

* _Download or clone project files: https://github.com/ziggity/codenames_group_project It's that easy!_
* _Run bundle command in terminal when inside the project directory, and follow along with terminal commands below to make database_
* _type ruby app.rb in terminal_
* _open web browser and go to localhost:4567_
* _enjoy!_

## Terminal commands to build the database:
* _start the postgres server: 'In Terminal, press cmd T to make a new terminal and type Postgres:_
* _In a new terminal tab in the project directory: Enter commands rake db:create_
* _Enter commands rake db:migrate_
* _Enter for testing purposes: rake db:test:prepare_

## Specs

* _spec 0: Program will take 25 words from database and place them randomly on the board 5x5 grid._
* _spec 1: Program will show the spymaster the secret code of where his secret words are:_
* _spec 2: Program will spymaster can click on cards to drag them to the correct location on the grid_
* _spec 3:Program checks to see who wins by checking the count of cards left in the pile_

## Known Bugs

_No known bugs, yet_

## Support and contact details

_no support, this is just a class assignment_

## Technologies Used
* _Bootstrap 3.3.7_
* _JQuery 3.2.0_
* _Sinatra_
* _Ruby Gems - rspec, pry, Capybara_

### License

*This project is licensed under the MIT license*

Copyright (c) 2017 **_Zach Beecher and team_**
