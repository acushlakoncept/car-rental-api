class Car < ApplicationRecord
  belongs_to :user

  validates :make, :model, :year, :color, :transmission, :ac, presence: true
end
