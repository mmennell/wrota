class RestaurantReview < ApplicationRecord
  # Direct associations

  belongs_to :shift

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
