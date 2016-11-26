class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :role_id
      t.string :bonus
      t.string :bonus_terms
      t.integer :staff_id
      t.boolean :allocated

      t.timestamps

    end
  end
end
