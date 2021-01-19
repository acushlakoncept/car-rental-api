# CAR HIRE/RENTALS JSON API WITH RAILS 6

In this project, users can add a car and it's featured amongst the least of cars available for hire.
The project serves as my final capstone project at Microverse.

## Built With

- Ruby v2.6.5
- Ruby on Rails v6.0.3.2
- RSpec-Rails for testing


## Current API Endpoints

Our API will expose the following RESTful endpoints.
### BaseUrl: /api/v1

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /register          | Signup                       |
| POST /login             | Login                        |
| GET /users              | List all users               |
| GET /cars               | List all cars                |
| POST /cars              | Add a new car                |
| DELETE /cars/:id        | Delete a car                 |
| PUT /cars/:id           | Update a car                 |
| DELETE /user/:id        | Delete a user                |
| PUT /user/:id           | Update a user                |

### POST '/login'

#### Example Request
```bash
curl --location --request POST 'http://localhost:3000/api/v1/login' \
--data-raw '{
   "username": "acushla",
   "password": "password"
}'
```

#### Body raw
```json
{
   "username": "acushla",
   "password": "password"
}
```

### POST '/register'

#### Example Request
```bash
curl --location --request POST 'http://localhost:3000/api/v1/register' \
--data-raw '{
    "user": {
        "username": "acushla",
        "password": "password"
    }
}
'
```

#### Body raw
```json
{
    "user": {
        "username": "faith",
        "password": "qazwsx"
    }
}
```

### POST '/cars'

User must be logged in to perform this action

**AUTHORIZATION**

***Bearer Token***

#### Example Request
```bash
curl --location --request POST 'http://localhost:3000/api/v1/cars' \
--data-raw '{
  "make": "Toyota",
  "model": "Corolla",
  "year": 2015,
  "color": "Black",
  "ac": "true",
  "transmission": "Automatic",
  "max_capacity": 4,
  "image_url": "https://source.unsplash.com/800x600/?car,black"
}'
```

#### Body raw
```json
{
  "make": "Toyota",
  "model": "Corolla",
  "year": 2015,
  "color": "Black",
  "ac": "true",
  "transmission": "Automatic",
  "max_capacity": 4,
  "image_url": "https://source.unsplash.com/800x600/?car,black"
}
```

### GET '/cars'
User must be logged in to perform this action

Get the list of all cars available. 
You can also limit results using `/?limit=2` with offset `/?limit=2/?offset=1`


**AUTHORIZATION**

***Bearer Token***

#### Example Request
```bash
curl --location --request GET 'http://localhost:3000/api/v1/cars/' \ 
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjA4NDMyNzk2LCJleHAiOjE2MDg1MTkxOTYsImp0aSI6IjA5ZGRmMmZjLWY5M2YtNDVlZS04MDJjLTA1MDlkMTBkOWQzYyJ9.xxxxxxxxxxxxxxx'
```

### GET '/users'
User must be logged in and must be an **admin** to perform this action

Get the list of all users available. 
You can also limit results using `/?limit=2` with offset `/?limit=2/?offset=1`


**AUTHORIZATION**

***Bearer Token***

#### Example Request
```bash
curl --location --request GET 'http://localhost:3000/api/v1/users' \
--header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjA4NDMyNzk2LCJleHAiOjE2MDg1MTkxOTYsImp0aSI6IjA5ZGRmMmZjLWY5M2YtNDVlZS04MDJjLTA1MDlkMTBkOWQzYyJ9.xxxxxxxxxxxxxxx'
```

