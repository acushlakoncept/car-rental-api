class Car < ApplicationRecord
  belongs_to :user
  has_many :favourites

  validates :make, :model, :year, :color, :transmission, :ac, :image_url, presence: true
end
