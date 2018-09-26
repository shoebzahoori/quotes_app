Quotes App
This is a Ruby app using the Rails framework.

Running Locally
Make sure you have Ruby, Bundler installed.

git clone git@github.com:/shoebzahoori/quotes_app.git 
cd quotes_app
bundle
rake db:create 
rake db:migrate
rails s 
Your app should now be running on localhost:3000.
