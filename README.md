# Food-trucks

An example demonstrating how Facebook's React, Relay and GraphQL libraries can be used inconjunction with a Ruby on Rails/postgresql based web server.
This application utilizes ES6 javascripts that gets transpiled by Babel and Webpack.

# SETUP

git clone https://github.com/AndreaOlivieri/Food-trucks

cd Food-trucks

bundle install

npm install

In one terminal window:

bin/rake db:create

bin/rake db:migrate

bin/rails server

In a different terminal window:

webpack -w

Then go to your browser and visit:

  http://localhost:3000/
