# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'user1', password: 'password')
User.create(username: 'admin', password: 'password', admin: true)

50.times do 
  admin_user = User.last
  make_and_model = Faker::Vehicle.make_and_model
  new_car = admin_user.cars.create!(make: make_and_model.split(' ').first, model: make_and_model.split(' ').last,
                                    year: Faker::Vehicle.year, ac: 'true', transmission: Faker::Vehicle.transmission,
                                    color: Faker::Vehicle.color, max_capacity: 4,
                                    image_url: "`https://source.unsplash.com/800x600/?car,#{Faker::Vehicle.color.downcase}`")
  new_car.save
end
