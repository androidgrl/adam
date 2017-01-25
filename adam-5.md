New relic, go to transactions, type web, slowest avg resp time
thoroughput = actual requests to a server from people

our app, someone on a browser enters the url and our server sends them to our node app
which decides based on the user account which modules they have access to, and then
those modules are downloaded to the users browser.  Then that module makes requests to
the api.

All qa, dev, ints same db except prod is separate.  The dbs are all on a server in LV.

redis handles our jobs, production is on LV server, everything else is on our machine.
Redis is a hybrid between a key-value memory store and a database with persistence to disk.
It is fast but also has recovery so if you turn your computer off it will remember the data.

Memecached is superfast, used for caching, but it has no disk store so when you turn off
computer it's gone.  When you use Rails.cache.fetch it uses it, and is handled by a plugin
dolly.  On Heroku you add a container for memecached, different from a dyno.

QA and Int are dev domain, Prod tan.

*Questions*
Are memecache servers different for each int?
persistence by disk as opposed to what? ram?
database vs memory store?
what is a dyno, rails engine?
address = ip address
domain name is the url you enter and it points to an ip address (translated through DNS)

An ip address is the address for a server which is like an apartment building, and it's port
is like an apartment number in the building.

http://localhost:3000
(protocol, domain, port)

```
#####################################################
##
## ACL JENKINS
##
#####################################################

Host jenkins
  HostName aci-jenkinsm-01w.dev.activenetwork.com



#####################################################
##
## ACL INT
##
#####################################################

# WEB
Host acl.int.web01
  HostName int-acl-web-01w.dev.activenetwork.com

Host acl.int.web02
  HostName int-acl-web-02w.dev.activenetwork.com

Host acl.int.web03
  HostName int-acl-web-03w.dev.activenetwork.com

Host acl.int.web04
  HostName int-acl-web-04w.dev.activenetwork.com

Host acl.int.web05
  HostName int-acl-web-05w.dev.activenetwork.com

Host acl.int.web06
  HostName int-acl-web-06w.dev.activenetwork.com

Host acl.int.web07
  HostName int-acl-web-07w.dev.activenetwork.com


# API
Host acl.int.api01
  HostName int-acl-api-01w.dev.activenetwork.com

Host acl.int.api02
  HostName int-acl-api-02w.dev.activenetwork.com

Host acl.int.api03
  HostName int-acl-api-03w.dev.activenetwork.com

Host acl.int.api04
  HostName int-acl-api-04w.dev.activenetwork.com

Host acl.int.api05
  HostName int-acl-api-05w.dev.activenetwork.com

Host acl.int.api06
  HostName int-acl-api-06w.dev.activenetwork.com

Host acl.int.api07
  HostName int-acl-api-07w.dev.activenetwork.com


# WORKER
Host acl.int.worker01
  HostName int-acl-worker-01w.dev.activenetwork.com

Host acl.int.worker02
  HostName int-acl-worker-02w.dev.activenetwork.com

Host acl.int.worker03
  HostName int-acl-worker-03w.dev.activenetwork.com

Host acl.int.worker04
  HostName int-acl-worker-04w.dev.activenetwork.com

Host acl.int.worker05
  HostName int-acl-worker-05w.dev.activenetwork.com

Host acl.int.worker06
  HostName int-acl-worker-06w.dev.activenetwork.com

Host acl.int.worker07
  HostName int-acl-worker-07w.dev.activenetwork.com


# REDIS
Host acl.int.redis01
  HostName int-acl-redis-01w.dev.activenetwork.com

Host acl.int.redis02
  HostName int-acl-redis-02w.dev.activenetwork.com

Host acl.int.redis03
  HostName int-acl-redis-03w.dev.activenetwork.com

Host acl.int.redis04
  HostName int-acl-redis-04w.dev.activenetwork.com

Host acl.int.redis05
  HostName int-acl-redis-05w.dev.activenetwork.com

Host acl.int.redis06
  HostName int-acl-redis-06w.dev.activenetwork.com

Host acl.int.redis07
  HostName int-acl-redis-07w.dev.activenetwork.com


# MEMCACHED
Host acl.int.memcached01
  HostName int-acl-memcached-01w.dev.activenetwork.com

Host acl.int.memcached02
  HostName int-acl-memcached-02w.dev.activenetwork.com

Host acl.int.memcached03
  HostName int-acl-memcached-03w.dev.activenetwork.com

Host acl.int.memcached04
  HostName int-acl-memcached-04w.dev.activenetwork.com

Host acl.int.memcached05
  HostName int-acl-memcached-05w.dev.activenetwork.com

Host acl.int.memcached06
  HostName int-acl-memcached-06w.dev.activenetwork.com

Host acl.int.memcached07
  HostName int-acl-memcached-07w.dev.activenetwork.com



#####################################################
##
## ACL QA
##
#####################################################

# WEB
Host acl.qa.web01
  HostName qa-acl-web-01w.dev.activenetwork.com

Host acl.qa.web02
  HostName qa-acl-web-02w.dev.activenetwork.com


# API
Host acl.qa.api01
  HostName qa-acl-api-01w.dev.activenetwork.com

Host acl.qa.api02
  HostName qa-acl-api-02w.dev.activenetwork.com


# WORKER
Host acl.qa.worker01
  HostName qa-acl-worker-01w.dev.activenetwork.com


# REDIS
Host acl.qa.redis01
  HostName qa-acl-redis-01w.dev.activenetwork.com



#####################################################
##
## ACL DEMO
##
#####################################################

# WEB
Host acl.demo.web01
  HostName demo-acl-web-01w.dev.activenetwork.com

# API
Host acl.demo.api01
  HostName demo-acl-api-01w.dev.activenetwork.com

# WORKER
Host acl.demo.worker01
  HostName demo-acl-worker-01w.dev.activenetwork.com


# REDIS
Host acl.demo.redis01
  HostName demo-acl-redis-01w.dev.activenetwork.com


# MEMCACHED
Host acl.demo.memcached01
  HostName demo-acl-memcached-01w.dev.activenetwork.com



#####################################################
##
## ACL PROD
##
#####################################################

# WEB
Host acl.prod.web01
  HostName prod-acl-web-01w.active.tan

Host acl.prod.web02
  HostName prod-acl-web-02w.active.tan


# API
Host acl.prod.api01
  HostName prod-acl-api-01w.active.tan

Host acl.prod.api02
  HostName prod-acl-api-02w.active.tan

Host acl.prod.api03
  HostName prod-acl-api-03w.active.tan

Host acl.prod.api04
  HostName prod-acl-api-04w.active.tan

Host acl.prod.api05
  HostName prod-acl-api-05w.active.tan

Host acl.prod.api06
  HostName prod-acl-api-06w.active.tan

Host acl.prod.api07
  HostName prod-acl-api-07w.active.tan

Host acl.prod.api08
  HostName prod-acl-api-08w.active.tan


# WORKER
Host acl.prod.worker01
  HostName prod-acl-worker-01w.active.tan

Host acl.prod.worker02
  HostName prod-acl-worker-02w.active.tan

Host acl.prod.worker03
  HostName prod-acl-worker-03w.active.tan

Host acl.prod.worker04
  HostName prod-acl-worker-04w.active.tan

Host acl.prod.worker05
  HostName prod-acl-worker-05w.active.tan


# REDIS
Host acl.prod.redis01
  HostName prod-acl-redis-01w.active.tan

Host acl.prod.redis02
  HostName prod-acl-redis-02w.active.tan


# MEMCACHED
Host acl.prod.memcached01
  HostName prod-acl-memcached-01w.active.tan



#####################################################
##
## ADHUB INT
##
#####################################################

# WEB
Host adhub.int.web01
  HostName int-adhub-web-01w.dev.activenetwork.com

Host adhub.int.web02
  HostName int-adhub-web-02w.dev.activenetwork.com


# REDIS
Host adhub.int.redis01
  HostName int-adhub-redis-01w.dev.activenetwork.com

Host adhub.int.redis02
  HostName int-adhub-redis-02w.dev.activenetwork.com



#####################################################
##
## ADHUB QA
##
#####################################################

# WEB
Host adhub.qa.web01
  HostName qa-adhub-web-01w.dev.activenetwork.com

Host adhub.qa.web02
  HostName qa-adhub-web-02w.dev.activenetwork.com


# REDIS
Host adhub.qa.redis01
  HostName qa-adhub-redis-01w.dev.activenetwork.com



#####################################################
##
## ADHUB PROD
##
#####################################################

# WEB
Host adhub.prod.web01
  HostName prod-adhub-web-01w.active.tan

Host adhub.prod.web02
  HostName prod-adhub-web-02w.active.tan

Host adhub.prod.web03
  HostName prod-adhub-web-03w.active.tan

Host adhub.prod.web04
  HostName prod-adhub-web-04w.active.tan


# REDIS
Host adhub.prod.redis01
  HostName prod-adhub-redis-01w.active.tan

Host adhub.prod.redis02
  HostName prod-adhub-redis-02w.active.tan
```

```
We have a single shared DB instance pre-prod, but every server has its own cache


Passenger is the server we use in prod, webbrick is in dev.


[10:51]
and we fully manage our caching in our code since we controll full access to it.....

[10:51]
let me rephrase....

[10:52]
so any time you’re caching, if you 100% control access (or at least 100% control writes), you can cache without expiration

[10:52]
because the only time it will ever change is if somebody uses YOUR code to write to it

[10:52]
that’s true with the stuff we cache in memberships

[10:52]
so we don’t expire (or expire with long durations)

[10:53]
the problem is that in PRE-PROD, it _isn’t_ true, since any other INT server or anyone’s DEV server can write a value to the DB and none of the _other_ PRE-PROD machines will know about it

[10:53]
so PRE-PROD other servers _can_ change the cache out from under your server....meaning you _shouldn’t_ do things like remove expiry.....

[10:54]
so we’re left with a choice.....

[10:54]
1. We fix our caching mechanisms to fix PRE-PROD only issues (I don’t love this cause it means our code becomes more complex to fix an issue that is pre-prod only)

[10:55]
2. We all use a shared cache (I kind of think this may be a good option - the same way we all share the QA DB, maybe have a single PRE-PROD cache that we all point to)

[10:55]
3. We use guards based on environment in our code to handle this…either we don’t cache at all in those cases when PRE-PROD or we expire in very short durations

[10:55]
that help at all?
```

redis writes to disk every few seconds, a db writes to disk everytime something is updated which makes it slower
RAM is temporary memory, disk is permament.

Capistrano is a gem in config/deploy/int01.rb there is a deploy script which tell what server to have redis and memecached to point to.

Chef/puppet/docker are all recipes to set up a server environment, like install Ruby/Rails etc.

Passenger is the server we use in prod, webbrick is in dev.

active.com, com is the 'tld' top level domain
The farther right you go on the url the more general

When you start a rails app it calls config.ru ru standsd for "rack up"

Rack is a library for http requests

Browser > rack > middleware > server

middleware takes a request, does something with it and returns it, a rails app is a kind of middleware, so is a controller

99% of all Rails apps use Rack, Phoenix uses plug

HTTP protocol means you need to send back code, head, body in the response
HTTPS has additional headers and encrypts body

Rack app = something that responds to call, takes a hash as an argument and returns an array with status code, headers and a body.

When start a Rails app, it runs config.ru which calls run Rails.application, this is in config/environment.rb which calls Rails.application.initialize!
Which runs config/application.rb which defines our app:

module Insights
  class Application < Rails::Application

which inherits from application.rb in Rails, which responds to call

