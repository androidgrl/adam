Encryption is when you use an algorithm to scramble up a message and it has a key to unscramble it.  It is reversible.

Hashing is when you scranble a message permanently.  You cannot unhash a message, except by brute force.  The output is always of a fixed length depending on what hashing algorithm you use. You will always get the same hash for the same message.
A collision is when you get the same hash for different messages.

Brute forcing a hash is when you randomly try to guess the message and see if it matches the hash.
So, if someone got into your database which stored hashed passwords, and randomly tried to guess passwords and it matched the hash, then they guessed the password.

Salting is when you add something to the message to make a longer, which makes it harder to guess by brute force.
