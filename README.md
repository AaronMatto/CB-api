
# CB-api
A simple api request app the sends requests to https://thecatapi.com/ to display some basic info about cats.

It is worth noting that while the cat API documentation states it requires an API key for the endpoint I have chosen to use,
(https://api.thecatapi.com/v1/images/search?breed_id=beng)
the key is not essential to perform a request. I decided to attach the key by using the HTTParty gem anyway via header.
