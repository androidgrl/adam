What websockets were for were for realtime updating of the browser from the server.
So if two browsers are looking at the same page, and one selects a time slot, the server
is updated and then pushes the update to all connected browsers.  This is not possible
with AJAX because the server would not be able to dynamically update the other connected
browsers.

Postgres is concurrent, which is not the same as multithreading.  It means you can make multiple changes
to the same table at once.

ADP-mart is hooked up to our backend through TinyTds gem.
TinyTds = a gem for connecting to, querying, iterating over MS-SQL databases

Database replication = used for multiple requests from different accounts
Sharding = used for one account having a shit ton of rows in a table, the rows are split between servers and then combined after calculation.
MS-SQL does not do sharding and it's not ACID
ACID = Atomicity, Consistency, Isolation, Durability
