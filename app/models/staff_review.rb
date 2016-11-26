class StaffReview < ApplicationRecord
  # Direct associations

  belongs_to :shift

  belongs_to :staff

  # Indirect associations

  # Validations

end
