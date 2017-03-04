SPA = single page app, it sends the whole website FE to the browser in a single compressed/obfuscated/uglified file, it looks like you went to a different url but never went to a different one, the advantage is that there is only one handle and metadata

__Router.js__
*Sets up the website and gets all the data you need for the website*
It has nested routes, the higher levels will get data available for lower levels not vice versa
It cascades down from events always starting there
Errors are put on the top level because it will bubble up

__Routes__
*Gets model, sets up controller and pushes model into controller*
Has beforeModel hooks
gets the model this.modelFor
makes api calls
it has promises "then", "then" is how asynch works
"data down actions up"
"save state on controller or services never router"

router > route > controller (state) > template (data) > components

Ember will look for a route directory that matches the nesting in the router

__Controller__
*Stores state and where you can set default values*
Stores the state "get(this, 'model.organization')"
Where you set attributes to null, it's like setting a default value when you initialize, if you initialize with a value it will set to it otherwise it'll be your default.

Ember will look for a controller file in a directory structure that matches the routes

__Template__
It can send defined variables to components, which have their own templates.
A template for a component is like a partial.

Ember will look for a template file in a directory structure that matches the controller

__Components__

Ember will look for a component file in app/components/ and it's template in app/templates/components/

__Flow of my MR__
in the route it makes the api call and sets priceScheduleRecommendation attribute on the model
and sets the same property on the controller
the pricing controller just has a default for null, not sure what controller is doing
the template then has access to this property and passes it to the registration-category component
inside this component, it makes a computed property priceDistanceRecommendation
and the template passes it to the d3-price-type-slider component and template

The $E is for a component and in the console you can do $E.get('variable')

__Ember__
Ember includes a router, components, and datastore all in one.
If you do al-la-carte:
React-router
React = components
Redux = datastore
