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

### POST '/Login'

#### Example Request
```bash
curl --location --request POST 'http://localhost:3000/api/v1/login' \
--data-raw '{
   "username": "acushla",
   "password": "qazwsx"
}'
```

#### Body raw
```json
{
   "username": "acushla",
   "password": "qazwsx"
}
```