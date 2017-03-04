__Deployment__
Deployment = Pushing your app code to the server and running any scripts that you need to run

1. git push origin int01
This pushes to gitlab which has a webhook which tells Jenkins that something pushed to it
Jenkins then has it's own copy of the app and is running on its own server, and it pulls the latest version of int01 from gitlab
2.  Jenkins then runs the tests and if they pass it runs cap deploy int01
Which runs deploy.rb and int01.rb
Deploy.rb sets the scripts for capistrano to use after the server has pulled the latest version of int01
Int01.rb tells pushes the latest version of int01 to the server
Then the cap scripts get run such as bundle install.
And lastly it runs passenger start which starts the rails server
The cap scripts get run by Jenkins which SSH's into the server

__Initialization__
1. Rails s is run which runs config.ru
2. which runs config/environment.rb
3. which runs config/application.rb
which loads railties, autoloadpaths which includes controllers, gems
4. goes back to environment.rb and runs initialize!
5. which runs config/environments/int.rb
6. then runs everything in initializers directory

When a model is called, Rails will look for it in the app subdirectories in alphabetical order, until it gets to the model
directory.  Which is why if you have a model with the same name in both models and services, it will only find the one in
models.
