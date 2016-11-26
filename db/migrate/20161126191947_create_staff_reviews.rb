class CreateStaffReviews < ActiveRecord::Migration
  def change
    create_table :staff_reviews do |t|
      t.integer :staff_id
      t.integer :shift_id
      t.integer :overall_rating
      t.string :punctuality
      t.integer :appearance
      t.integer :professionalism
      t.integer :work_ethic
      t.boolean :hire_again
      t.string :private_comments

      t.timestamps

    end
  end
end
