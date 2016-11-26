class ChangeHireAgainDefaultValueInStaffReviews < ActiveRecord::Migration[5.0]
  def change
    change_column_default :staff_reviews, :hire_again, 'TRUE'
  end
end
