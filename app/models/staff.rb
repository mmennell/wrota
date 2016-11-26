class Staff < ApplicationRecord
  # Direct associations

  has_many   :shifts,
             :dependent => :destroy

  has_many   :staff_reviews,
             :dependent => :destroy

  belongs_to :role

  belongs_to :home_restaurant,
             :class_name => "Restaurant"

  # Indirect associations

  # Validations

end
