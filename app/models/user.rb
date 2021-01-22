# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
  has_many :cars
  has_many :favourites

  def self.fav_cars(user)
    favs = []
    user.favourites.each { |a| favs << a.car_id }
    Car.where(id: favs)
  end
end
