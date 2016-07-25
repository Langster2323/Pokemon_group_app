# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Best of Pokemon

This app accumulates the likes and favorites of the entire Pokemon universe from the users. The users pick their favorite all time Pokemon, and the app holds the users results. There's 720 Pokemon in the Poke universe, and our users will get to decide which Pokemon is the most desirable.

Getting started(Check out the app)
https://pokekeemster.herokuapp.com/
http://localhost:3000/pokemon



Run rails s to run the local servers
-Likes table belong to Users table and Pokemons table.




Tables
-Users (# = schemas)
  #username
  #password
  #authtoken




-Pokemons
  #name
  #types
  #description
  #favorite
  #height
  #weight
-Likes
  #belongs_to users && Pokemon



-Comments



Users
-users can be logged in.
-users can be edited & updated
-users can be created &destroyed
http://localhost:3000/users
http://localhost:3000/users/1




Pokemons
-Pokemon can be favorited & like_id
-Pokemon can be edited & destroyed
http://localhost:3000/pokemon




Run test
-rails s
=> http://localhost:3000 copy & then paste this into URL.




-make sure local server is still running on terminal.
You can login as one of the users.

-http://localhost:3000/users/1
-http://localhost:3000/pokemond




Built with:
-Postgresql
-Ruby
-Rails
-Active Record





Authors:
Caryn
Mark
Ahkeem
Pokemon app from github:
https://github.com/Langster2323/Pokemon_group_app




Controllers:
https://github.com/Langster2323/Pokemon_group_app/tree/master/app/controllers




Models:
https://github.com/Langster2323/Pokemon_group_app/tree/master/app/models




Database:
https://github.com/Langster2323/Pokemon_group_app/tree/master/db




Routes:
https://github.com/Langster2323/Pokemon_group_app/blob/master/config/routes.rb




Gemfile:
https://github.com/Langster2323/Pokemon_group_app/blob/master/Gemfile




Give it a shot!
