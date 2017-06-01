Nginx is a web server that can act as a load balancer, which sends requests to different servers that are running simultaneously.
It is highly optimized, and can serve static assets from it's hard drive very quickly so it's often used to serve static files like
css and js and error pages.

Webbrick is a ruby server that is included with Ruby.

Thin is a light version of a ruby server used in development.

Apache, Passenger, Puma, Unicorn can all be ruby production servers.  They are good for dynamic pages but are slow with static.

Static = a page that doesn't change e.g. an error page
Dynamic = a page that runs through the controller and requires code to be running to serve.

We have 2 servers running, Nginx(webserver-run when we do sudo nginx), and Thin(rails application server-rails s).

localhost is just a domain name which is connected to an ip address which points to a server.
/etc/hosts is a file that routes certain domain names to certain ip addresses e.g.

```
127.0.0.1	localhost
255.255.255.255	broadcasthost
::1             localhost
127.0.0.1 localhost.dev.activenetwork.com
127.0.0.1 api.activitycloud.active.local
127.0.0.1 activitycloud.active.local
```

It reads left to right when you request localhost, it will send you to 127.0.0.1 which is a server on your computer.

nslookup activee.com will go out to the DNS and get the ip address.
