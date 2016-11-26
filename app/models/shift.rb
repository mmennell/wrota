class Shift < ApplicationRecord
  # Direct associations

  has_one    :restaurant_review,
             :dependent => :destroy

  has_one    :staff_review,
             :dependent => :destroy

  belongs_to :staff

  belongs_to :role

  # Indirect associations

  # Validations

end
