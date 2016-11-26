class Role < ApplicationRecord
  # Direct associations

  has_many   :shifts,
             :dependent => :destroy

  has_many   :staffs,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
