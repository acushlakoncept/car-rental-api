# CAR HIRE/RENTALS JSON API WITH RAILS 6

In this project, users can add a car and it's featured amongst the least of cars available for hire. It is the API implementation of the main app.
The project serves as my final capstone project at Microverse.

## Live Link
[API Home](https://hire-a-car.herokuapp.com/)

## Built With

- Ruby v2.6.5
- Ruby on Rails v6.0.3.2
- RSpec-Rails for testing


## Current API Endpoints

The API will expose the following RESTful endpoints.
### BaseUrl: {Host-URL}/api/v1

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
| POST /favourites        | Add favourite car            |
| GET /favourites         | Get user favourite cars      |

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

#### Results
```json
[
    {
        "id": 1,
        "owner": "acushla",
        "name": "Toyota Corolla 2011 Silver",
        "transmission": "Automatic",
        "ac": "Yes",
        "max_seat_capacity": 4,
        "image": "https://source.unsplash.com/800x600/?car",
        "date_added": "2021-01-18T14:49:47.985Z"
    },
    {
        "id": 2,
        "owner": "acushla",
        "name": "Nissan Almera 2002 Blue",
        "transmission": "Manual",
        "ac": "Yes",
        "max_seat_capacity": 4,
        "image": "https://source.unsplash.com/800x600/?car,blue",
        "date_added": "2021-01-18T15:10:06.350Z"
    }
]
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

## Live Version

[Live API](#)
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.5
Rails: 6.0.3.2
Postgres: >=9.5

### Setup

~~~bash
$ git clone https://github.com/acushlakoncept/car-rental-api.git
$ cd car-rental-api
~~~

Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine

```bash
heroku create --stack heroku-18
heroku rename app-new-name
git push heroku $BRANCH_NAME:master 
```
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`

```bash
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

Enjoy your newly deployed rails API


### Run tests

```
    rpsec 
```

# Authors

👤 **Uduak Essien**

- Github: [@acushlakoncept](https://github.com/acushlakoncept/)
- Twitter: [@acushlakoncept](https://twitter.com/acushlakoncept)
- Linkedin: [acushlakoncept](https://www.linkedin.com/in/acushlakoncept/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

