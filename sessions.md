__Cookies__
Cookies are data that are stored on the browser which persist until they expire even if you quit the browser.  When you request a webpage the browser sends the cookie back the the server, and the server will send the cookie to the browser. So it's like if I went between my house and school with a whiteboard, which always had stuff written on it.  My parents could write or change the message everytime I go back to school. So, in the case of upticking page refreshes on an index page, you'd increment the count in the index controller action and it would send the updated data to the browser, and you'd see the updated count displayed.

__Sessions__
A session is an encrypted cookie.  It uses a token in secrets.yml to decrypt it.  It will expire after the browser is closed.
When someone logs-in the session will be created in the database.  And a session key will be sent back to the browser.  Whenever, the person visits the site again or refreshes the page, the session key is sent and whenever session[:user_id] is called, it will see if the cookies has the session key and if so it will allow access to user_id.

__Authentication__
1.  User logs into the app and a session[:user_id] is created which creates a session_id that is encrypted according to the secret_key_base stored in secrets.yml as a key and associates the user_id as a value to that session_id key:
```
{
    "1045871-243571-5": {
        "user_id": 3
    }
}
```

__Ian Notes__
The key is then passed to the browser through the session cookie.  This session cookie will only expire when the browser is closed.  When the user refreshes the page, the cookie with the key is sent to the server, decrypted and if the key matches the user_id is stored


yeah, a common pattern is to generate a unique hash for the user, write their session data into redis using that hashed id as the key in redis, and write that key in the user’s cookie. this can, however, lead to session hijacking if I can also find out your hash and rewrite my own cookie, so an even better pattern would be to have a secondary lookup somewhere where the hash from the cookie is looked up elsewhere to determine the user, and then have a secondary key to fetch session data.

[7:30]
if you use a long-enough unique identifier, like a 36-byte UUID, it’s much harder to brute force the discovery of the value, and like a password, the longer the hash gets the more times the sun woul dhave to burn out before you correctly guessed it :slightly_smiling_face:
