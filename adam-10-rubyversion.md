The ruby version in vagrant is set in the scripts directory
In local it's set in the ./ruby-version directory

When you send a request to active.activitycloud.local in the browser it'll by default request port 80.
It'll look for the ip address in you /etc/hosts and find 127.0.0.1.

Then it'll go to Nginx port 80 (by default) and Nginx will send it to localhost server port 3000,
because rails s listens on port 3000
