
# CB-api
A simple api request app the sends requests to https://thecatapi.com/ to display some basic info about cats.

It is worth noting that while the cat API documentation states it requires an API key for the endpoint I have chosen to use,
(https://api.thecatapi.com/v1/images/search?breed_id=beng)
the key is not essential to perform a request; the key allows the user to receive more info from a request as opposed to denying/granting access. I decided to attach the key via header by using the HTTParty gem anyway.

<img width="1440" alt="Screenshot 2022-06-14 at 13 50 37" src="https://user-images.githubusercontent.com/90662943/173584247-0b8d0352-8488-4675-8acf-b29c0d18e611.png">
<img width="1440" alt="Screenshot 2022-06-14 at 13 50 52" src="https://user-images.githubusercontent.com/90662943/173584293-8069756e-b21d-4319-a9d8-30c621602342.png">
