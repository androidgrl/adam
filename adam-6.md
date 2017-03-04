To tell how many relationships should be in the model look at the schema.
The number of lines going out are the number of relationships the model needs.
The lines going out of the id are has_many's
The lines going foreign keys are belongs_to's

A web application framework runs on the server: Node, Express, Rails, Sinatra
A FE framework runs on the browser: Ember, Angular, React

Node = a web application framework for running server side applications in JS
It's popular because you can use JS on both the BE and FE
it can be analogous to Rails in that:
package.json = Gemfile
npm install = bundle install
npm start = rails s
npm test = rspec
You know it's a node app because there's a package.json file
You know it's a server because you visit a localhost to see it
OTHELLO was a node app that used webpack as the server

Express = a web application framework that is a router, is like Sinatra
REAL-TIME was a node app that used express as a router
You know the router is index.js because that's where it required Node

MEAN = Mongo + Express + Angular + Node
Mongo = database
Express = routes
Node = controller
Angular = views

HTTP requests = get, post, etc.
AJAX's whole purpose is to send http requests and also modify the DOM
you can't modify the DOM with Rails like in the controller because it's on
the server and knows nothing of the DOM
AJAX = Asynchronous JS and XML
it's asynch because it has a success callback meaning that while it's waiting for
a response it allows the program to do other things and then performs a function
upon successfully receiving a response

The way that the assets JS files in Rails get sent to the browser, is that in the layout application.html.erb, it has javascript_include_tag, which includes application.js, which uses require_tree . which requires
all the js files in that directory.
