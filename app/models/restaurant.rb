class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :roles,
             :dependent => :destroy

  has_many   :restaurant_reviews,
             :dependent => :destroy

  has_many   :staffs,
             :foreign_key => "home_restaurant_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
