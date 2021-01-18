class Car < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user

  validates :make, :model, :year, :color, :transmission, :ac, presence: true
end
