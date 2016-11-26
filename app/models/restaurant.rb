class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :staffs,
             :foreign_key => "home_restaurant_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
