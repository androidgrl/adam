In the hbs I could not make a calculation from customer.id.split("-")[1]
because it's not a js file.

So this hbs file is a template component and so I looked for that js file
in the components.

It has customer, to find where that is passed from, do an ag for
{{contact-details-info

And it finds it in
```
app/templates/memberships/people/person.hbs
20:      {{contact-details-info customer=customer}}
```
Since it's in templates not a component template it means it's getting it from the
controller directly.

Which gets it from the route:
```
import Ember from 'ember';

export default Ember.Route.extend({

  model(params) {
    if(this.store.hasRecordForId('customer', params.person_id)) {
      //the member is in the store but we still need contact-attempts
      return this.store.query('contactAttempt', {
        'customer-id': params.person_id })
      .then(()=>this.store.peekRecord('customer', params.person_id));
    } else {
      //this will load the record and include the contact attempts
      return this.store.findRecord('customer', params.person_id);
    }
  }

});
```
In the routes this.store.query is always an AJAX request
