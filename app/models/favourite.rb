class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # validates :car_id, uniqueness: { scope: :user_id }
  validates_uniqueness_of :car, scope: :user_id,
  message: 'You already have it in your list of favourites'
end
