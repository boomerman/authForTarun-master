class AddMarksToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :marks, :decimal
  end
end
