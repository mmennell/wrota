class Staff < ApplicationRecord
  # Direct associations

  belongs_to :home_restaurant,
             :class_name => "Restaurant"

  # Indirect associations

  # Validations

end
