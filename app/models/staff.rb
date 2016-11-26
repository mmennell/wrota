class Staff < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :user

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
