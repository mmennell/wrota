class ChangeAllocatedDefaultValueInShifts < ActiveRecord::Migration[5.0]
  def change
    change_column_default :shifts, :allocated, 'FALSE'
  end
end
