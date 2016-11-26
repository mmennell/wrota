class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :firstname
      t.string :lastname
      t.integer :contact_telephone
      t.integer :home_restaurant_id
      t.string :photo
      t.integer :role_id
      t.integer :user_id

      t.timestamps

    end
  end
end
