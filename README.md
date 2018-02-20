# Bloccit: a Reddit replica to teach the fundamentals of web development and Rails.

## Features
Users can create a standard account in order to create and edit topics and posts.
Users can up/down vote any post. A list of their posts is displayed on their profile with their vote score.
Users can favorite posts, which are then saved on their user profile for easy tracking.
## Setup and Configuration
Languages and Frameworks: Ruby on Rails and Bootstrap

Ruby version 2.2.1

Databases: SQLite (Test, Development), PostgreSQL (Production)

Development Tools and Gems include:

* BCrypt for secure passwords
* FactoryGirl for test suite success  

## Setup:

Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).

To run Bloccit locally:

Clone the repository
Run bundle install
Create and migrate the SQLite database with rake db:create and rake db:migrate
Start the server using rails server
Run the app on localhost:3000
Made with my mentor at [Bloc](http://bloc.io).
