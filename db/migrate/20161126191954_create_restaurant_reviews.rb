class CreateRestaurantReviews < ActiveRecord::Migration
  def change
    create_table :restaurant_reviews do |t|
      t.integer :overall_rating
      t.float :tips_received
      t.string :feedback
      t.boolean :work_again
      t.integer :restaurant_id
      t.integer :shift_id

      t.timestamps

    end
  end
end
